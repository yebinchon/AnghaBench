; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c___stm32_dfsdm_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c___stm32_dfsdm_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_dfsdm_adc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @__stm32_dfsdm_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__stm32_dfsdm_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.stm32_dfsdm_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %4)
  store %struct.stm32_dfsdm_adc* %5, %struct.stm32_dfsdm_adc** %3, align 8
  %6 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %7 = call i32 @stm32_dfsdm_stop_conv(%struct.stm32_dfsdm_adc* %6)
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call i32 @stm32_dfsdm_adc_dma_stop(%struct.iio_dev* %8)
  %10 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @stm32_dfsdm_stop_dfsdm(i32 %12)
  %14 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %20 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @iio_hw_consumer_disable(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_stop_conv(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @stm32_dfsdm_adc_dma_stop(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_stop_dfsdm(i32) #1

declare dso_local i32 @iio_hw_consumer_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
