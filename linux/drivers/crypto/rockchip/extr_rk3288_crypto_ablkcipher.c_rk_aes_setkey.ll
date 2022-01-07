; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.rk_cipher_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_KEY_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @rk_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.rk_cipher_ctx*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %13 = call %struct.rk_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.rk_cipher_ctx* %13, %struct.rk_cipher_ctx** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AES_KEYSIZE_128, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AES_KEYSIZE_192, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AES_KEYSIZE_256, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %28 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %21, %17, %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RK_CRYPTO_AES_KEY_0, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy_toio(i64 %41, i32* %42, i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
