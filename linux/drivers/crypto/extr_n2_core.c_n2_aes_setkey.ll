; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.n2_cipher_context = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.n2_cipher_alg = type { i32 }

@ENC_TYPE_CHAINING_MASK = common dso_local global i32 0, align 4
@ENC_TYPE_ALG_AES128 = common dso_local global i32 0, align 4
@ENC_TYPE_ALG_AES192 = common dso_local global i32 0, align 4
@ENC_TYPE_ALG_AES256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @n2_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.n2_cipher_context*, align 8
  %10 = alloca %struct.n2_cipher_alg*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %14 = call %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.n2_cipher_context* %14, %struct.n2_cipher_context** %9, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %16 = call %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm* %15)
  store %struct.n2_cipher_alg* %16, %struct.n2_cipher_alg** %10, align 8
  %17 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %10, align 8
  %18 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ENC_TYPE_CHAINING_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %23 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %43 [
    i32 130, label %25
    i32 129, label %31
    i32 128, label %37
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @ENC_TYPE_ALG_AES128, align 4
  %27 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %28 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %49

31:                                               ; preds = %3
  %32 = load i32, i32* @ENC_TYPE_ALG_AES192, align 4
  %33 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %34 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %49

37:                                               ; preds = %3
  %38 = load i32, i32* @ENC_TYPE_ALG_AES256, align 4
  %39 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %40 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %49

43:                                               ; preds = %3
  %44 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %45 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %46 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %37, %31, %25
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %52 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %54 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(i32 %56, i32* %57, i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %49, %43
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
