; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ad7793_platform_data* }
%struct.ad7793_platform_data = type { i64 }
%struct.iio_dev = type { i32 }
%struct.ad7793_state = type { i32 }

@AD7793_REFSEL_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7793_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ad7793_platform_data*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad7793_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %8, align 8
  store %struct.ad7793_platform_data* %9, %struct.ad7793_platform_data** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %4, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = call %struct.ad7793_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.ad7793_state* %13, %struct.ad7793_state** %5, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = call i32 @iio_device_unregister(%struct.iio_dev* %14)
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %16)
  %18 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %3, align 8
  %19 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AD7793_REFSEL_INTERNAL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %25 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_disable(i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.ad7793_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
