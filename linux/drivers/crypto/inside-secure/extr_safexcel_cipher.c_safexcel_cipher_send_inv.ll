; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_send_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_send_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.safexcel_crypto_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32, i32*, i32*)* @safexcel_cipher_send_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_cipher_send_inv(%struct.crypto_async_request* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.safexcel_cipher_ctx*, align 8
  %11 = alloca %struct.safexcel_crypto_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %14 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32 %15)
  store %struct.safexcel_cipher_ctx* %16, %struct.safexcel_cipher_ctx** %10, align 8
  %17 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %17, i32 0, i32 1
  %19 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %18, align 8
  store %struct.safexcel_crypto_priv* %19, %struct.safexcel_crypto_priv** %11, align 8
  %20 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %22 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @safexcel_invalidate_cache(%struct.crypto_async_request* %20, %struct.safexcel_crypto_priv* %21, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 1, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @safexcel_invalidate_cache(%struct.crypto_async_request*, %struct.safexcel_crypto_priv*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
