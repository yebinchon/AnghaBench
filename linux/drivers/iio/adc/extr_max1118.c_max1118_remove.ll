; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.max1118 = type { i32 }
%struct.spi_device_id = type { i64 }

@max1118 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max1118_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1118_remove(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.max1118*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.max1118* @iio_priv(%struct.iio_dev* %9)
  store %struct.max1118* %10, %struct.max1118** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %11)
  store %struct.spi_device_id* %12, %struct.spi_device_id** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = call i32 @iio_device_unregister(%struct.iio_dev* %13)
  %15 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %16 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %15)
  %17 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %18 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @max1118, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.max1118*, %struct.max1118** %5, align 8
  %24 = getelementptr inbounds %struct.max1118, %struct.max1118* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_disable(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.max1118* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
