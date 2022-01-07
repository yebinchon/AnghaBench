; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { %struct.ad_sigma_delta_info*, %struct.spi_device* }
%struct.iio_dev = type { i32 }
%struct.spi_device = type { i32 }
%struct.ad_sigma_delta_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad_sd_init(%struct.ad_sigma_delta* %0, %struct.iio_dev* %1, %struct.spi_device* %2, %struct.ad_sigma_delta_info* %3) #0 {
  %5 = alloca %struct.ad_sigma_delta*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.ad_sigma_delta_info*, align 8
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store %struct.spi_device* %2, %struct.spi_device** %7, align 8
  store %struct.ad_sigma_delta_info* %3, %struct.ad_sigma_delta_info** %8, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %10 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %11 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %10, i32 0, i32 1
  store %struct.spi_device* %9, %struct.spi_device** %11, align 8
  %12 = load %struct.ad_sigma_delta_info*, %struct.ad_sigma_delta_info** %8, align 8
  %13 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %14 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %13, i32 0, i32 0
  store %struct.ad_sigma_delta_info* %12, %struct.ad_sigma_delta_info** %14, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %17 = call i32 @iio_device_set_drvdata(%struct.iio_dev* %15, %struct.ad_sigma_delta* %16)
  ret i32 0
}

declare dso_local i32 @iio_device_set_drvdata(%struct.iio_dev*, %struct.ad_sigma_delta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
