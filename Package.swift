// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "winder",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "winder",
            targets: ["winder"]),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "winder",
            dependencies: [
                .product(name: "FirebaseDatabase", package: "Firebase")
            ])
    ]
) 