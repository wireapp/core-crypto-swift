// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "WireCoreCrypto",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "WireCoreCrypto",
            targets: ["WireCoreCrypto", "CoreCryptoSwift"]
        ),
        .library(
            name: "LibCoreCrypto",
            targets: ["LibCoreCrypto"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WireCoreCrypto",
            dependencies: ["CoreCryptoSwift"]
        ),
        .systemLibrary(
            name: "LibCoreCrypto",
            path: "./lib"
        ),
        .target(
            name: "CoreCryptoSwift",
            dependencies: ["LibCoreCrypto"]
        ),
    ]
)
