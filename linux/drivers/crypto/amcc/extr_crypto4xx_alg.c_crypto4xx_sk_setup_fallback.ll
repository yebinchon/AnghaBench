; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_sk_setup_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_sk_setup_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_skcipher = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_ctx*, %struct.crypto_skcipher*, i32*, i32)* @crypto4xx_sk_setup_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_sk_setup_fallback(%struct.crypto4xx_ctx* %0, %struct.crypto_skcipher* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.crypto4xx_ctx*, align 8
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %5, align 8
  store %struct.crypto_skcipher* %1, %struct.crypto_skcipher** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %15 = call i32 @crypto_sync_skcipher_clear_flags(i32 %13, i32 %14)
  %16 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %21 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %20)
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @crypto_sync_skcipher_set_flags(i32 %19, i32 %23)
  %25 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @crypto_sync_skcipher_setkey(i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %33 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %34 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %32, i32 %33)
  %35 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %36 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crypto_sync_skcipher_get_flags(i32 %39)
  %41 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %35, i32 %42)
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
