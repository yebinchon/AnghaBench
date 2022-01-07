; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_cipher_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_cipher_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.artpec6_cryptotfm_context = type { i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @artpec6_crypto_cipher_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_cipher_set_key(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.artpec6_cryptotfm_context*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %10 = call %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher* %9)
  store %struct.artpec6_cryptotfm_context* %10, %struct.artpec6_cryptotfm_context** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %13 [
    i32 16, label %12
    i32 24, label %12
    i32 32, label %12
  ]

12:                                               ; preds = %3, %3, %3
  br label %19

13:                                               ; preds = %3
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %15 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %16 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %14, i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %8, align 8
  %21 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %8, align 8
  %28 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
