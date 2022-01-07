; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tiadc_device = type { %struct.TYPE_9__*, %struct.tiadc_dma }
%struct.TYPE_9__ = type { i32, i64 }
%struct.tiadc_dma = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@REG_FIFO1 = common dso_local global i64 0, align 8
@DMA_CYCLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fifo1\00", align 1
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.tiadc_device*)* @tiadc_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_request_dma(%struct.platform_device* %0, %struct.tiadc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tiadc_device*, align 8
  %6 = alloca %struct.tiadc_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.tiadc_device* %1, %struct.tiadc_device** %5, align 8
  %9 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %10 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %9, i32 0, i32 1
  store %struct.tiadc_dma* %10, %struct.tiadc_dma** %6, align 8
  %11 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %12 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %13 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %16 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %17 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %20 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_FIFO1, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %27 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dma_cap_zero(i32 %29)
  %31 = load i32, i32* @DMA_CYCLIC, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dma_cap_set(i32 %31, i32 %32)
  %34 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %35 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_11__* @dma_request_chan(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %41 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %40, i32 0, i32 0
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %43 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i64 @IS_ERR(%struct.TYPE_11__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %2
  %48 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %49 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.TYPE_11__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %53 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %52, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %53, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %83

55:                                               ; preds = %2
  %56 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %57 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %64 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %65 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %64, i32 0, i32 2
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @dma_alloc_coherent(i32 %62, i32 %63, i32* %65, i32 %66)
  %68 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %69 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %71 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %55
  br label %76

75:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %83

76:                                               ; preds = %74
  %77 = load %struct.tiadc_dma*, %struct.tiadc_dma** %6, align 8
  %78 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @dma_release_channel(%struct.TYPE_11__* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %75, %47
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.TYPE_11__* @dma_request_chan(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
