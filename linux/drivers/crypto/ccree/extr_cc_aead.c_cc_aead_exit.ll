; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, %struct.TYPE_2__, i32*, i64, i32 }
%struct.TYPE_2__ = type { %struct.cc_hmac_s, %struct.cc_xcbc_s }
%struct.cc_hmac_s = type { i32*, i64, i32*, i64 }
%struct.cc_xcbc_s = type { i32*, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Clearing context @%p for %s\0A\00", align 1
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Freed enckey DMA buffer enckey_dma_addr=%pad\0A\00", align 1
@DRV_HASH_XCBC_MAC = common dso_local global i64 0, align 8
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Freed xcbc_keys DMA buffer xcbc_keys_dma_addr=%pad\0A\00", align 1
@DRV_HASH_NULL = common dso_local global i64 0, align 8
@MAX_HMAC_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Freed ipad_opad DMA buffer ipad_opad_dma_addr=%pad\0A\00", align 1
@MAX_HMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Freed padded_authkey DMA buffer padded_authkey_dma_addr=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_aead*)* @cc_aead_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_aead_exit(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.cc_aead_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cc_xcbc_s*, align 8
  %6 = alloca %struct.cc_hmac_s*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %8 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.cc_aead_ctx* %8, %struct.cc_aead_ctx** %3, align 8
  %9 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.device* @drvdata_to_dev(i32 %11)
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %15 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %17 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %16, i32 0, i32 0
  %18 = call i32 @crypto_tfm_alg_name(i32* %17)
  %19 = call i32 (%struct.device*, i8*, %struct.cc_aead_ctx*, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.cc_aead_ctx* %15, i32 %18)
  %20 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %27 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dma_free_coherent(%struct.device* %25, i32 %26, i32* %29, i64 %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %35, i32 0, i32 3
  %37 = bitcast i64* %36 to %struct.cc_aead_ctx*
  %38 = call i32 (%struct.device*, i8*, %struct.cc_aead_ctx*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.cc_aead_ctx* %37)
  %39 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %24, %1
  %44 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DRV_HASH_XCBC_MAC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.cc_xcbc_s* %52, %struct.cc_xcbc_s** %5, align 8
  %53 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %54 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %60 = mul nsw i32 %59, 3
  %61 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %62 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %65 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dma_free_coherent(%struct.device* %58, i32 %60, i32* %63, i64 %66)
  br label %68

68:                                               ; preds = %57, %49
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %71 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %70, i32 0, i32 1
  %72 = bitcast i64* %71 to %struct.cc_aead_ctx*
  %73 = call i32 (%struct.device*, i8*, %struct.cc_aead_ctx*, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.cc_aead_ctx* %72)
  %74 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %75 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.cc_xcbc_s*, %struct.cc_xcbc_s** %5, align 8
  %77 = getelementptr inbounds %struct.cc_xcbc_s, %struct.cc_xcbc_s* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %138

78:                                               ; preds = %43
  %79 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DRV_HASH_NULL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %137

84:                                               ; preds = %78
  %85 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.cc_hmac_s* %87, %struct.cc_hmac_s** %6, align 8
  %88 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %89 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load i32, i32* @MAX_HMAC_DIGEST_SIZE, align 4
  %95 = mul nsw i32 2, %94
  %96 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %97 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %100 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dma_free_coherent(%struct.device* %93, i32 %95, i32* %98, i64 %101)
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %105 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %104, i32 0, i32 3
  %106 = bitcast i64* %105 to %struct.cc_aead_ctx*
  %107 = call i32 (%struct.device*, i8*, %struct.cc_aead_ctx*, ...) @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), %struct.cc_aead_ctx* %106)
  %108 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %109 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %111 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %92, %84
  %113 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %114 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* @MAX_HMAC_BLOCK_SIZE, align 4
  %120 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %121 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %124 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @dma_free_coherent(%struct.device* %118, i32 %119, i32* %122, i64 %125)
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %129 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %128, i32 0, i32 1
  %130 = bitcast i64* %129 to %struct.cc_aead_ctx*
  %131 = call i32 (%struct.device*, i8*, %struct.cc_aead_ctx*, ...) @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), %struct.cc_aead_ctx* %130)
  %132 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %133 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %6, align 8
  %135 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %117, %112
  br label %137

137:                                              ; preds = %136, %78
  br label %138

138:                                              ; preds = %137, %68
  ret void
}

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.cc_aead_ctx*, ...) #1

declare dso_local i32 @crypto_tfm_alg_name(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
