; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_handle_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_handle_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.aead_request = type { i64, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.safexcel_cipher_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*)* @safexcel_aead_handle_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_aead_handle_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_async_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.aead_request*, align 8
  %12 = alloca %struct.crypto_aead*, align 8
  %13 = alloca %struct.safexcel_cipher_req*, align 8
  %14 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %16 = call %struct.aead_request* @aead_request_cast(%struct.crypto_async_request* %15)
  store %struct.aead_request* %16, %struct.aead_request** %11, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %12, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %20 = call %struct.safexcel_cipher_req* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.safexcel_cipher_req* %20, %struct.safexcel_cipher_req** %13, align 8
  %21 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %13, align 8
  %22 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %13, align 8
  %27 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %31 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %13, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv* %28, i32 %29, %struct.crypto_async_request* %30, %struct.safexcel_cipher_req* %31, i32* %32, i32* %33)
  store i32 %34, i32* %14, align 4
  br label %55

35:                                               ; preds = %5
  %36 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %49 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %48)
  %50 = add nsw i64 %47, %49
  %51 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %13, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv* %36, i32 %37, %struct.crypto_async_request* %38, i32 %41, i32 %44, i64 %50, %struct.safexcel_cipher_req* %51, i32* %52, i32* %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %35, %25
  %56 = load i32, i32* %14, align 4
  ret i32 %56
}

declare dso_local %struct.aead_request* @aead_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.safexcel_cipher_req* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, %struct.safexcel_cipher_req*, i32*, i32*) #1

declare dso_local i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32, i32, i64, %struct.safexcel_cipher_req*, i32*, i32*) #1

declare dso_local i64 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
