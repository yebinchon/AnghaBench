; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_xts_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_xts_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.caam_ctx = type { i32, i32*, %struct.TYPE_3__, %struct.caam_flc*, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.caam_flc = type { i8**, i32* }
%struct.device = type { i32 }

@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"key size mismatch\0A\00", align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i64 0, align 8
@DECRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @xts_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.caam_flc*, align 8
  %11 = alloca i32*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = call %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.caam_ctx* %13, %struct.caam_ctx** %8, align 8
  %14 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %14, i32 0, i32 4
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %19 = mul nsw i32 2, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %24 = mul nsw i32 2, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %30 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %31 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %116

34:                                               ; preds = %21, %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32* %39, i32** %42, align 8
  %43 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %46, i32 0, i32 3
  %48 = load %struct.caam_flc*, %struct.caam_flc** %47, align 8
  %49 = load i64, i64* @ENCRYPT, align 8
  %50 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %48, i64 %49
  store %struct.caam_flc* %50, %struct.caam_flc** %10, align 8
  %51 = load %struct.caam_flc*, %struct.caam_flc** %10, align 8
  %52 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %55, i32 0, i32 2
  %57 = call i32 @cnstr_shdsc_xts_skcipher_encap(i32* %54, %struct.TYPE_3__* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @desc_len(i32* %58)
  %60 = call i8* @cpu_to_caam32(i32 %59)
  %61 = load %struct.caam_flc*, %struct.caam_flc** %10, align 8
  %62 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %60, i8** %64, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @ENCRYPT, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @desc_bytes(i32* %72)
  %74 = sext i32 %73 to i64
  %75 = add i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_sync_single_for_device(%struct.device* %65, i32 %71, i32 %76, i32 %79)
  %81 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %81, i32 0, i32 3
  %83 = load %struct.caam_flc*, %struct.caam_flc** %82, align 8
  %84 = load i64, i64* @DECRYPT, align 8
  %85 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %83, i64 %84
  store %struct.caam_flc* %85, %struct.caam_flc** %10, align 8
  %86 = load %struct.caam_flc*, %struct.caam_flc** %10, align 8
  %87 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %90, i32 0, i32 2
  %92 = call i32 @cnstr_shdsc_xts_skcipher_decap(i32* %89, %struct.TYPE_3__* %91)
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @desc_len(i32* %93)
  %95 = call i8* @cpu_to_caam32(i32 %94)
  %96 = load %struct.caam_flc*, %struct.caam_flc** %10, align 8
  %97 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* %95, i8** %99, align 8
  %100 = load %struct.device*, %struct.device** %9, align 8
  %101 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @DECRYPT, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @desc_bytes(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = add i64 8, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dma_sync_single_for_device(%struct.device* %100, i32 %106, i32 %111, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %34, %26
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_encap(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @cpu_to_caam32(i32) #1

declare dso_local i32 @desc_len(i32*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_decap(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
