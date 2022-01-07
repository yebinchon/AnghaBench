; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { %struct.TYPE_2__, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.caam_drv_private = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"keylen %d\0A\00", align 1
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
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.caam_drv_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %16 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %15)
  store %struct.caam_hash_ctx* %16, %struct.caam_hash_ctx** %8, align 8
  %17 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %17, i32 0, i32 2
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %21 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %20, i32 0, i32 0
  %22 = call i32 @crypto_tfm_alg_blocksize(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %24 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %25, i32 0, i32 2
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.caam_drv_private* @dev_get_drvdata(i32 %29)
  store %struct.caam_drv_private* %30, %struct.caam_drv_private** %12, align 8
  store i32* null, i32** %14, align 8
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @GFP_DMA, align 4
  %42 = or i32 %40, %41
  %43 = call i32* @kmemdup(i32* %38, i32 %39, i32 %42)
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %147

49:                                               ; preds = %37
  %50 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @hash_digest_key(%struct.caam_hash_ctx* %50, i32* %7, i32* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %139

57:                                               ; preds = %49
  %58 = load i32*, i32** %14, align 8
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %57, %3
  %60 = load %struct.caam_drv_private*, %struct.caam_drv_private** %12, align 8
  %61 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 6
  br i1 %63, label %64, label %117

64:                                               ; preds = %59
  %65 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @split_key_len(i32 %77)
  %79 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAAM_MAX_HASH_KEY_SIZE, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  br label %139

89:                                               ; preds = %64
  %90 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @memcpy(i32 %92, i32* %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ugt i32 %96, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %89
  %103 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %103, i32 0, i32 2
  %105 = load %struct.device*, %struct.device** %104, align 8
  %106 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DMA_TO_DEVICE, align 4
  %115 = call i32 @dma_sync_single_for_device(%struct.device* %105, i32 %109, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %102, %89
  br label %134

117:                                              ; preds = %59
  %118 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %118, i32 0, i32 2
  %120 = load %struct.device*, %struct.device** %119, align 8
  %121 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %122 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %124, i32 0, i32 0
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CAAM_MAX_HASH_KEY_SIZE, align 4
  %129 = call i32 @gen_split_key(%struct.device* %120, i32 %123, %struct.TYPE_2__* %125, i32* %126, i32 %127, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %139

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %138 = call i32 @ahash_set_sh_desc(%struct.crypto_ahash* %137)
  store i32 %138, i32* %4, align 4
  br label %147

139:                                              ; preds = %132, %88, %56
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @kfree(i32* %140)
  %142 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %143 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %144 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %142, i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %139, %134, %46
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @hash_digest_key(%struct.caam_hash_ctx*, i32*, i32*, i32) #1

declare dso_local i32 @split_key_len(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @gen_split_key(%struct.device*, i32, %struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ahash_set_sh_desc(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
