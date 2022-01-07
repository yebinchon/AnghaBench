; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_adc = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.dma_slave_config = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@STM32_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @stm32_adc_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_dma_request(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.stm32_adc*, align 8
  %5 = alloca %struct.dma_slave_config, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %7)
  store %struct.stm32_adc* %8, %struct.stm32_adc** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 0
  %11 = call %struct.TYPE_12__* @dma_request_slave_channel(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %12, i32 0, i32 0
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %13, align 8
  %14 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STM32_DMA_BUFFER_SIZE, align 4
  %28 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @dma_alloc_coherent(i32 %26, i32 %27, i32* %29, i32 %30)
  %32 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %89

41:                                               ; preds = %19
  %42 = call i32 @memset(%struct.dma_slave_config* %5, i32 0, i32 16)
  %43 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %43, i32 0, i32 5
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %50 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %51, %58
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %59
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %66 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = call i32 @dmaengine_slave_config(%struct.TYPE_12__* %67, %struct.dma_slave_config* %5)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %73

72:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %95

73:                                               ; preds = %71
  %74 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %75 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @STM32_DMA_BUFFER_SIZE, align 4
  %82 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %83 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %86 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32 %80, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %73, %38
  %90 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %91 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = call i32 @dma_release_channel(%struct.TYPE_12__* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %72, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_12__* @dma_request_slave_channel(i32*, i8*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(%struct.TYPE_12__*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
