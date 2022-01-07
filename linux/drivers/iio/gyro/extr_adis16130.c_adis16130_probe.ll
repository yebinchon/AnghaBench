; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.adis16130_state = type { i32, %struct.spi_device* }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@ENOMEM = common dso_local global i32 0, align 4
@adis16130_channels = common dso_local global i32 0, align 4
@adis16130_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16130_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16130_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.adis16130_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %7, i32 16)
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = icmp ne %struct.iio_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = call %struct.adis16130_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.adis16130_state* %16, %struct.adis16130_state** %4, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call i32 @spi_set_drvdata(%struct.spi_device* %17, %struct.iio_dev* %18)
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.adis16130_state*, %struct.adis16130_state** %4, align 8
  %22 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %21, i32 0, i32 1
  store %struct.spi_device* %20, %struct.spi_device** %22, align 8
  %23 = load %struct.adis16130_state*, %struct.adis16130_state** %4, align 8
  %24 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %23, i32 0, i32 0
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @adis16130_channels, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @adis16130_channels, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 1
  store i32* @adis16130_info, i32** %47, align 8
  %48 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = call i32 @devm_iio_device_register(%struct.TYPE_7__* %52, %struct.iio_dev* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %14, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.adis16130_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_7__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
