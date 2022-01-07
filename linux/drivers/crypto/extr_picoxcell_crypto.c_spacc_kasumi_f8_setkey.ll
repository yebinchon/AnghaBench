; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_kasumi_f8_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_kasumi_f8_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.spacc_ablk_ctx = type { i32, i32 }

@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @spacc_kasumi_f8_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_kasumi_f8_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.spacc_ablk_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %11 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %7, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %13 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.spacc_ablk_ctx* %13, %struct.spacc_ablk_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %19 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %20 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %18, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i32 %26, i32* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %17
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
