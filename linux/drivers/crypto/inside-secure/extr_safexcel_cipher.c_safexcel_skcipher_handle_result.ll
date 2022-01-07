; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_handle_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_handle_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.skcipher_request = type { i32, i32, i32 }
%struct.safexcel_cipher_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*)* @safexcel_skcipher_handle_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_skcipher_handle_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_async_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.skcipher_request*, align 8
  %12 = alloca %struct.safexcel_cipher_req*, align 8
  %13 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %15 = call %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request* %14)
  store %struct.skcipher_request* %15, %struct.skcipher_request** %11, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %17 = call %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.skcipher_request* %16)
  store %struct.safexcel_cipher_req* %17, %struct.safexcel_cipher_req** %12, align 8
  %18 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %12, align 8
  %19 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %12, align 8
  %24 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %28 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv* %25, i32 %26, %struct.crypto_async_request* %27, %struct.safexcel_cipher_req* %28, i32* %29, i32* %30)
  store i32 %31, i32* %13, align 4
  br label %49

32:                                               ; preds = %5
  %33 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %12, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv* %33, i32 %34, %struct.crypto_async_request* %35, i32 %38, i32 %41, i32 %44, %struct.safexcel_cipher_req* %45, i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %32, %22
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, %struct.safexcel_cipher_req*, i32*, i32*) #1

declare dso_local i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32, i32, i32, %struct.safexcel_cipher_req*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
