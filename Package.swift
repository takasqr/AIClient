// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AIClient",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AIClient",
            targets: ["AIClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/takasqr/SwiftWing", .upToNextMajor(from: "0.1.4")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AIClient",
            dependencies: [
                "SwiftWing"
            ]),
        .testTarget(
            name: "AIClientTests",
            dependencies: ["AIClient"]),
    ]
)
