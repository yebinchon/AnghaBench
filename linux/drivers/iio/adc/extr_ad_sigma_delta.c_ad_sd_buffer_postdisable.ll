; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_buffer_postdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_buffer_postdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad_sigma_delta = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@AD_SD_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad_sd_buffer_postdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_sd_buffer_postdisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad_sigma_delta*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev* %4)
  store %struct.ad_sigma_delta* %5, %struct.ad_sigma_delta** %3, align 8
  %6 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %7 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %6, i32 0, i32 4
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %10 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %9, i32 0, i32 4
  %11 = load i32, i32* @HZ, align 4
  %12 = call i32 @wait_for_completion_timeout(i32* %10, i32 %11)
  %13 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %14 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %19 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @disable_irq_nosync(i32 %22)
  %24 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %25 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %28 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %30 = load i32, i32* @AD_SD_MODE_IDLE, align 4
  %31 = call i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta* %29, i32 %30)
  %32 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %33 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %35 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spi_bus_unlock(i32 %38)
  ret i32 %39
}

declare dso_local %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta*, i32) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
