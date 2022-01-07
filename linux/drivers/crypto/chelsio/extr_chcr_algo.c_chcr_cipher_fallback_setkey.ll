; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_fallback_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_fallback_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.ablk_ctx = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @chcr_cipher_fallback_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.ablk_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %11 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %7, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %13 = call i32 @c_ctx(%struct.crypto_ablkcipher* %12)
  %14 = call %struct.ablk_ctx* @ABLK_CTX(i32 %13)
  store %struct.ablk_ctx* %14, %struct.ablk_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %19 = call i32 @crypto_sync_skcipher_clear_flags(i32 %17, i32 %18)
  %20 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %24 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @crypto_sync_skcipher_set_flags(i32 %22, i32 %28)
  %30 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @crypto_sync_skcipher_setkey(i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %39 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @crypto_sync_skcipher_get_flags(i32 %44)
  %46 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %49 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
