; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_dma_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_dma_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmm = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.TYPE_5__*, i32, i32, i32, i32)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to prepare DMA memcpy\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to do DMA tx_submit\0A\00", align 1
@DMA_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"i878 wa DMA copy failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmm*, i32, i32)* @dmm_dma_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm_dma_copy(%struct.dmm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_device*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmm* %0, %struct.dmm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dmm*, %struct.dmm** %5, align 8
  %13 = getelementptr inbounds %struct.dmm, %struct.dmm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.dma_device*, %struct.dma_device** %15, align 8
  store %struct.dma_device* %16, %struct.dma_device** %8, align 8
  %17 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %18 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %17, i32 0, i32 0
  %19 = load %struct.dma_async_tx_descriptor* (%struct.TYPE_5__*, i32, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.TYPE_5__*, i32, i32, i32, i32)** %18, align 8
  %20 = load %struct.dmm*, %struct.dmm** %5, align 8
  %21 = getelementptr inbounds %struct.dmm, %struct.dmm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.dma_async_tx_descriptor* %19(%struct.TYPE_5__* %22, i32 %23, i32 %24, i32 4, i32 0)
  store %struct.dma_async_tx_descriptor* %25, %struct.dma_async_tx_descriptor** %9, align 8
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %27 = icmp ne %struct.dma_async_tx_descriptor* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load %struct.dmm*, %struct.dmm** %5, align 8
  %30 = getelementptr inbounds %struct.dmm, %struct.dmm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %36, i32 0, i32 0
  %38 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %37, align 8
  %39 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %40 = call i32 %38(%struct.dma_async_tx_descriptor* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @dma_submit_error(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.dmm*, %struct.dmm** %5, align 8
  %46 = getelementptr inbounds %struct.dmm, %struct.dmm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %74

51:                                               ; preds = %35
  %52 = load %struct.dmm*, %struct.dmm** %5, align 8
  %53 = getelementptr inbounds %struct.dmm, %struct.dmm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @dma_async_issue_pending(%struct.TYPE_5__* %54)
  %56 = load %struct.dmm*, %struct.dmm** %5, align 8
  %57 = getelementptr inbounds %struct.dmm, %struct.dmm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dma_sync_wait(%struct.TYPE_5__* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DMA_COMPLETE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.dmm*, %struct.dmm** %5, align 8
  %66 = getelementptr inbounds %struct.dmm, %struct.dmm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %51
  %70 = load %struct.dmm*, %struct.dmm** %5, align 8
  %71 = getelementptr inbounds %struct.dmm, %struct.dmm* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @dmaengine_terminate_all(%struct.TYPE_5__* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %44, %28
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_sync_wait(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
