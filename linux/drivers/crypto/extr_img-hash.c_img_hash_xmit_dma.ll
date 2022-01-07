; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_xmit_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_xmit_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.img_hash_dev*, i32 }
%struct.img_hash_request_ctx = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid DMA sg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Null DMA descriptor\0A\00", align 1
@img_hash_dma_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*, %struct.scatterlist*)* @img_hash_xmit_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_xmit_dma(%struct.img_hash_dev* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_hash_dev*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.img_hash_request_ctx*, align 8
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %8 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %9 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.img_hash_request_ctx* @ahash_request_ctx(i32 %10)
  store %struct.img_hash_request_ctx* %11, %struct.img_hash_request_ctx** %7, align 8
  %12 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %13 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i64 @dma_map_sg(i32 %14, %struct.scatterlist* %15, i32 1, i32 %16)
  %18 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %26 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %32 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %2
  %36 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %37 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %40 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %44 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %45 = load i32, i32* @DMA_CTRL_ACK, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %38, %struct.scatterlist* %39, i64 %42, i32 %43, i32 %46)
  store %struct.dma_async_tx_descriptor* %47, %struct.dma_async_tx_descriptor** %6, align 8
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %49 = icmp ne %struct.dma_async_tx_descriptor* %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %35
  %51 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %52 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %58 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %60 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_sg(i32 %61, %struct.scatterlist* %62, i32 1, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %80

67:                                               ; preds = %35
  %68 = load i32, i32* @img_hash_dma_callback, align 4
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 0
  store %struct.img_hash_dev* %71, %struct.img_hash_dev** %73, align 8
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %75 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %74)
  %76 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %77 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dma_async_issue_pending(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %67, %50, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local i64 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
