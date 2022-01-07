; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_device_id = type { i64 }
%struct.adis16080_state = type { i32*, %struct.spi_device* }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@ENOMEM = common dso_local global i32 0, align 4
@adis16080_chip_info = common dso_local global i32* null, align 8
@adis16080_channels = common dso_local global i32 0, align 4
@adis16080_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16080_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16080_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.adis16080_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %7)
  store %struct.spi_device_id* %8, %struct.spi_device_id** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.adis16080_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.adis16080_state* %19, %struct.adis16080_state** %5, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = call i32 @spi_set_drvdata(%struct.spi_device* %20, %struct.iio_dev* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.adis16080_state*, %struct.adis16080_state** %5, align 8
  %25 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %24, i32 0, i32 1
  store %struct.spi_device* %23, %struct.spi_device** %25, align 8
  %26 = load i32*, i32** @adis16080_chip_info, align 8
  %27 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %28 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load %struct.adis16080_state*, %struct.adis16080_state** %5, align 8
  %32 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @adis16080_channels, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @adis16080_channels, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32* @adis16080_info, i32** %54, align 8
  %55 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = call i32 @iio_device_register(%struct.iio_dev* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %17, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.adis16080_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
