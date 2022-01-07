; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_adc = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iio_dev = type { i32 }

@STM32_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_adc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.stm32_adc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.stm32_adc* %6, %struct.stm32_adc** %3, align 8
  %7 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %8 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_sync(i32* %10)
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = call i32 @iio_device_unregister(%struct.iio_dev* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @stm32_adc_hw_stop(i32* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_disable(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @pm_runtime_set_suspended(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_put_noidle(i32* %24)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %27 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %26)
  %28 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %1
  %33 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %34 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STM32_DMA_BUFFER_SIZE, align 4
  %41 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %42 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(i32 %39, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @dma_release_channel(%struct.TYPE_4__* %50)
  br label %52

52:                                               ; preds = %32, %1
  ret i32 0
}

declare dso_local %struct.stm32_adc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_hw_stop(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
