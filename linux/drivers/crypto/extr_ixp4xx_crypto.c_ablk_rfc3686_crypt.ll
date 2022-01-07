; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_rfc3686_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_rfc3686_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32* }
%struct.crypto_ablkcipher = type { i32 }
%struct.ixp_ctx = type { i32* }

@CTR_RFC3686_BLOCK_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @ablk_rfc3686_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablk_rfc3686_crypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.ixp_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %10 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %9)
  store %struct.crypto_ablkcipher* %10, %struct.crypto_ablkcipher** %3, align 8
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %12 = call %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %11)
  store %struct.ixp_ctx* %12, %struct.ixp_ctx** %4, align 8
  %13 = load i32, i32* @CTR_RFC3686_BLOCK_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %18 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %24 = call i32 @memcpy(i32* %16, i32* %22, i32 %23)
  %25 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %16, i64 %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %30 = call i32 @memcpy(i32* %27, i32* %28, i32 %29)
  %31 = call i32 @cpu_to_be32(i32 1)
  %32 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  %35 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 0
  store i32* %16, i32** %39, align 8
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %41 = call i32 @ablk_perform(%struct.ablkcipher_request* %40, i32 1)
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 %45
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ablk_perform(%struct.ablkcipher_request*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
