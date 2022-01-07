; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_hmac_dma_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_hmac_dma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i32, i32, i32 }
%struct.stm32_hash_request_ctx = type { i64, i32 }
%struct.crypto_ahash = type { i32 }
%struct.stm32_hash_ctx = type { i64, i32 }

@HASH_DMA_THRESHOLD = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC_KEY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dma_map_sg error\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*)* @stm32_hash_hmac_dma_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_hmac_dma_send(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_hash_dev*, align 8
  %4 = alloca %struct.stm32_hash_request_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.stm32_hash_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %3, align 8
  %8 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(i32 %10)
  store %struct.stm32_hash_request_ctx* %11, %struct.stm32_hash_request_ctx** %4, align 8
  %12 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i32 %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %5, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %17 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.stm32_hash_ctx* %17, %struct.stm32_hash_ctx** %6, align 8
  %18 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HASH_DMA_THRESHOLD, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %1
  %29 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %30 = call i32 @stm32_hash_write_key(%struct.stm32_hash_dev* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %32 = call i64 @stm32_hash_wait_busy(%struct.stm32_hash_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %94

37:                                               ; preds = %28
  br label %92

38:                                               ; preds = %23
  %39 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HASH_FLAGS_HMAC_KEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %46, i32 0, i32 1
  %48 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ALIGN(i64 %53, i32 4)
  %55 = call i32 @sg_init_one(i32* %47, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %45, %38
  %57 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %58 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i64 @dma_map_sg(i32 %59, i32* %61, i32 1, i32 %62)
  %64 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %72 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %94

77:                                               ; preds = %56
  %78 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %79 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %79, i32 0, i32 1
  %81 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @stm32_hash_xmit_dma(%struct.stm32_hash_dev* %78, i32* %80, i64 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %86 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_unmap_sg(i32 %87, i32* %89, i32 1, i32 %90)
  br label %92

92:                                               ; preds = %77, %37
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %70, %34
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i32) #1

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @stm32_hash_write_key(%struct.stm32_hash_dev*) #1

declare dso_local i64 @stm32_hash_wait_busy(%struct.stm32_hash_dev*) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_hash_xmit_dma(%struct.stm32_hash_dev*, i32*, i64, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
