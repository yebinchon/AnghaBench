; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32, %struct.tiadc_dma }
%struct.tiadc_dma = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.iio_dev*, i32 }

@FIFO1_THRESHOLD = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@tiadc_dma_rx_complete = common dso_local global i32 0, align 4
@REG_FIFO1THR = common dso_local global i32 0, align 4
@REG_DMA1REQ = common dso_local global i32 0, align 4
@REG_DMAENABLE_SET = common dso_local global i32 0, align 4
@DMA_FIFO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tiadc_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_start_dma(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.tiadc_device*, align 8
  %5 = alloca %struct.tiadc_dma*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %7)
  store %struct.tiadc_device* %8, %struct.tiadc_device** %4, align 8
  %9 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %10 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %9, i32 0, i32 1
  store %struct.tiadc_dma* %10, %struct.tiadc_dma** %5, align 8
  %11 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %12 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @FIFO1_THRESHOLD, align 4
  %14 = add nsw i32 %13, 1
  %15 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %16 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @rounddown(i32 %14, i32 %17)
  %19 = getelementptr i8, i8* %18, i64 -1
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %22 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %24 = sdiv i32 %23, 2
  %25 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %26 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i8* @rounddown(i32 %24, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %35 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %37 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %41 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %44 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %47 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %46, i32 0, i32 5
  %48 = call i32 @dmaengine_slave_config(i32 %45, %struct.TYPE_2__* %47)
  %49 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %50 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %53 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %56 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %60 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %63 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %64 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32 %51, i32 %54, i32 %58, i32 %61, i32 %62, i32 %63)
  store %struct.dma_async_tx_descriptor* %64, %struct.dma_async_tx_descriptor** %6, align 8
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %66 = icmp ne %struct.dma_async_tx_descriptor* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %1
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %101

70:                                               ; preds = %1
  %71 = load i32, i32* @tiadc_dma_rx_complete, align 4
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 0
  store %struct.iio_dev* %74, %struct.iio_dev** %76, align 8
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %78 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %77)
  %79 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %80 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %82 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dma_async_issue_pending(i32 %83)
  %85 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %86 = load i32, i32* @REG_FIFO1THR, align 4
  %87 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %88 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tiadc_writel(%struct.tiadc_device* %85, i32 %86, i32 %89)
  %91 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %92 = load i32, i32* @REG_DMA1REQ, align 4
  %93 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %94 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @tiadc_writel(%struct.tiadc_device* %91, i32 %92, i32 %95)
  %97 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %98 = load i32, i32* @REG_DMAENABLE_SET, align 4
  %99 = load i32, i32* @DMA_FIFO1, align 4
  %100 = call i32 @tiadc_writel(%struct.tiadc_device* %97, i32 %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %70, %67
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @rounddown(i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.TYPE_2__*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
