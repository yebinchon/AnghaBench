; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_xts_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_xts_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.caam_ctx = type { i32, i64*, i32, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.device = type { i32 }

@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"key size mismatch\0A\00", align 1
@ENCRYPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"driver enc context update failed\0A\00", align 1
@DECRYPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"driver dec context update failed\0A\00", align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
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
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.caam_ctx* %12, %struct.caam_ctx** %8, align 8
  %13 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %13, i32 0, i32 4
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %23 = mul nsw i32 2, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %103

28:                                               ; preds = %20, %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %43, i32 0, i32 3
  %45 = call i32 @cnstr_shdsc_xts_skcipher_encap(i32 %42, %struct.TYPE_3__* %44)
  %46 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 3
  %51 = call i32 @cnstr_shdsc_xts_skcipher_decap(i32 %48, %struct.TYPE_3__* %50)
  %52 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @ENCRYPT, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %28
  %60 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @ENCRYPT, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @caam_drv_ctx_update(i64 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %103

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %28
  %77 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @DECRYPT, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @DECRYPT, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @caam_drv_ctx_update(i64 %90, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %103

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %97, %72, %25
  %104 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %105 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %106 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %104, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %101
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_encap(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cnstr_shdsc_xts_skcipher_decap(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @caam_drv_ctx_update(i64, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
