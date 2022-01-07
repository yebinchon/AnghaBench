; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_xts_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_xts_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.caam_ctx = type { i32, i32, %struct.TYPE_3__, i32*, i32, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.device = type { i32 }

@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"key size mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @xts_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.caam_ctx* %12, %struct.caam_ctx** %8, align 8
  %13 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %13, i32 0, i32 6
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %23 = mul nsw i32 2, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %28 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %26, i32 %27)
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %20, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32* %38, i32** %41, align 8
  %42 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 2
  %51 = call i32 @cnstr_shdsc_xts_skcipher_encap(i32* %48, %struct.TYPE_3__* %50)
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @desc_bytes(i32* %56)
  %58 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_sync_single_for_device(%struct.device* %52, i32 %55, i32 %57, i32 %60)
  %62 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %66, i32 0, i32 2
  %68 = call i32 @cnstr_shdsc_xts_skcipher_decap(i32* %65, %struct.TYPE_3__* %67)
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @desc_bytes(i32* %73)
  %75 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dma_sync_single_for_device(%struct.device* %69, i32 %72, i32 %74, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %33, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_encap(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_decap(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
