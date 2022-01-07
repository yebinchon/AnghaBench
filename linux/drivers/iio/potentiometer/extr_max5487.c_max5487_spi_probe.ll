; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5487.c_max5487_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5487.c_max5487_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.max5487_data = type { %struct.spi_device*, i32 }
%struct.spi_device_id = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@max5487_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max5487_channels = common dso_local global i32 0, align 4
@MAX5487_COPY_NV_TO_AB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max5487_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5487_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.max5487_data*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.iio_dev* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = call %struct.max5487_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.max5487_data* %24, %struct.max5487_data** %5, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.max5487_data*, %struct.max5487_data** %5, align 8
  %27 = getelementptr inbounds %struct.max5487_data, %struct.max5487_data* %26, i32 0, i32 0
  store %struct.spi_device* %25, %struct.spi_device** %27, align 8
  %28 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %29 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.max5487_data*, %struct.max5487_data** %5, align 8
  %32 = getelementptr inbounds %struct.max5487_data, %struct.max5487_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 5
  store i32* @max5487_info, i32** %34, align 8
  %35 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @max5487_channels, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @max5487_channels, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.max5487_data*, %struct.max5487_data** %5, align 8
  %56 = getelementptr inbounds %struct.max5487_data, %struct.max5487_data* %55, i32 0, i32 0
  %57 = load %struct.spi_device*, %struct.spi_device** %56, align 8
  %58 = load i32, i32* @MAX5487_COPY_NV_TO_AB, align 4
  %59 = call i32 @max5487_write_cmd(%struct.spi_device* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %18
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %18
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = call i32 @iio_device_register(%struct.iio_dev* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %62, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.iio_dev*) #1

declare dso_local %struct.max5487_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @max5487_write_cmd(%struct.spi_device*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
