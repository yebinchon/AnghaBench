; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"keylen %d blocksize %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_MASK = common dso_local global i32 0, align 4
@CAAM_MAX_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @ahash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_hash_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.caam_hash_ctx* %14, %struct.caam_hash_ctx** %8, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %16 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %15, i32 0, i32 0
  %17 = call i32 @crypto_tfm_alg_blocksize(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %19 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %18)
  store i32 %19, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %20 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i32* @kmemdup(i32* %30, i32 %31, i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %121

41:                                               ; preds = %29
  %42 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @hash_digest_key(%struct.caam_hash_ctx* %42, i32* %7, i32* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %113

49:                                               ; preds = %41
  %50 = load i32*, i32** %12, align 8
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %49, %3
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @split_key_len(i32 %61)
  %63 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAAM_MAX_HASH_KEY_SIZE, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %113

73:                                               ; preds = %51
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i32* %74, i32** %77, align 8
  %78 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ugt i32 %81, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %73
  %88 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @memcpy(i32 %90, i32* %91, i32 %92)
  %94 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %95 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  %106 = call i32 @dma_sync_single_for_device(i32 %96, i32 %100, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %87, %73
  %108 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %109 = call i32 @ahash_set_sh_desc(%struct.crypto_ahash* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %121

113:                                              ; preds = %72, %48
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %117 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %118 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %116, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %113, %107, %38
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @hash_digest_key(%struct.caam_hash_ctx*, i32*, i32*, i32) #1

declare dso_local i32 @split_key_len(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ahash_set_sh_desc(%struct.crypto_ahash*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
