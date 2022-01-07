; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.spacc_ablk_ctx = type { i32, i32, i32 }

@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @spacc_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.spacc_ablk_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %14 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.spacc_ablk_ctx* %14, %struct.spacc_ablk_ctx** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %20 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %21 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AES_KEYSIZE_128, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AES_KEYSIZE_256, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %32
  %41 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %45 = call i32 @crypto_sync_skcipher_clear_flags(i32 %43, i32 %44)
  %46 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %50 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @crypto_sync_skcipher_set_flags(i32 %48, i32 %54)
  %56 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @crypto_sync_skcipher_setkey(i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %65 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @crypto_sync_skcipher_get_flags(i32 %70)
  %72 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %75 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %40
  br label %92

81:                                               ; preds = %40
  br label %82

82:                                               ; preds = %81, %28, %24
  %83 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @memcpy(i32 %85, i32* %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %9, align 8
  %91 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %82, %80
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %37, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_get_flags(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
