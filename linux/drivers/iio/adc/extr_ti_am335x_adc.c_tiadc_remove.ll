; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32, %struct.tiadc_dma }
%struct.tiadc_dma = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tiadc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.tiadc_device*, align 8
  %5 = alloca %struct.tiadc_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %9)
  store %struct.tiadc_device* %10, %struct.tiadc_device** %4, align 8
  %11 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %12 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %11, i32 0, i32 1
  store %struct.tiadc_dma* %12, %struct.tiadc_dma** %5, align 8
  %13 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %14 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %19 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %26 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %27 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %30 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_free_coherent(i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %34 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @dma_release_channel(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %17, %1
  %38 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %39 = call i32 @iio_device_unregister(%struct.iio_dev* %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %41 = call i32 @tiadc_iio_buffered_hardware_remove(%struct.iio_dev* %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %43 = call i32 @tiadc_channels_remove(%struct.iio_dev* %42)
  %44 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %45 = call i32 @get_adc_step_mask(%struct.tiadc_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %47 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @am335x_tsc_se_clr(i32 %48, i32 %49)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_4__*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_iio_buffered_hardware_remove(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_channels_remove(%struct.iio_dev*) #1

declare dso_local i32 @get_adc_step_mask(%struct.tiadc_device*) #1

declare dso_local i32 @am335x_tsc_se_clr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
