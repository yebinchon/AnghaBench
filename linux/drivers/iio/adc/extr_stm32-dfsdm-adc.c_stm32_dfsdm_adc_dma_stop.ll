; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_dfsdm_adc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DFSDM_CR1_RDMAEN_MASK = common dso_local global i32 0, align 4
@DFSDM_CR1_JDMAEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @stm32_dfsdm_adc_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dfsdm_adc_dma_stop(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.stm32_dfsdm_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %4)
  store %struct.stm32_dfsdm_adc* %5, %struct.stm32_dfsdm_adc** %3, align 8
  %6 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DFSDM_CR1(i32 %19)
  %21 = load i32, i32* @DFSDM_CR1_RDMAEN_MASK, align 4
  %22 = load i32, i32* @DFSDM_CR1_JDMAEN_MASK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @regmap_update_bits(i32 %16, i32 %20, i32 %23, i32 0)
  %25 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dmaengine_terminate_all(i32 %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DFSDM_CR1(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
