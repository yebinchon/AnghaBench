; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.skcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.safexcel_cipher_ctx = type { %struct.safexcel_crypto_priv* }
%struct.safexcel_crypto_priv = type { i32 }
%struct.safexcel_cipher_req = type { i32, i64 }
%struct.crypto_skcipher = type { i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32, i32*, i32*)* @safexcel_skcipher_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_skcipher_send(%struct.crypto_async_request* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.skcipher_request*, align 8
  %10 = alloca %struct.safexcel_cipher_ctx*, align 8
  %11 = alloca %struct.safexcel_cipher_req*, align 8
  %12 = alloca %struct.safexcel_crypto_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.crypto_skcipher*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %18 = call %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request* %17)
  store %struct.skcipher_request* %18, %struct.skcipher_request** %9, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32 %22)
  store %struct.safexcel_cipher_ctx* %23, %struct.safexcel_cipher_ctx** %10, align 8
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %25 = call %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.skcipher_request* %24)
  store %struct.safexcel_cipher_req* %25, %struct.safexcel_cipher_req** %11, align 8
  %26 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %26, i32 0, i32 0
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %27, align 8
  store %struct.safexcel_crypto_priv* %28, %struct.safexcel_crypto_priv** %12, align 8
  %29 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  %30 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %37 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %4
  %41 = phi i1 [ false, %4 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %45 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @safexcel_cipher_send_inv(%struct.crypto_async_request* %49, i32 %50, i32* %51, i32* %52)
  store i32 %53, i32* %13, align 4
  br label %83

54:                                               ; preds = %40
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %56 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %55)
  store %struct.crypto_skcipher* %56, %struct.crypto_skcipher** %14, align 8
  %57 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %15, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %16, align 8
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %62 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %14, align 8
  %65 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %64)
  %66 = call i32 @memcpy(i32* %60, i32 %63, i32 %65)
  %67 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %71 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %74 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %77 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @safexcel_send_req(%struct.crypto_async_request* %67, i32 %68, %struct.safexcel_cipher_req* %69, i32 %72, i32 %75, i32 %78, i32 0, i32 0, i32* %60, i32* %79, i32* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %83

83:                                               ; preds = %54, %48
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %87 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  ret i32 %88
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @safexcel_cipher_send_inv(%struct.crypto_async_request*, i32, i32*, i32*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @safexcel_send_req(%struct.crypto_async_request*, i32, %struct.safexcel_cipher_req*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
