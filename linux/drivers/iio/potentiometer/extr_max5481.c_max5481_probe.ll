; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5481.c_max5481_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5481.c_max5481_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.max5481_data = type { i32*, %struct.spi_device* }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@max5481_cfg = common dso_local global i32* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max5481_info = common dso_local global i32 0, align 4
@max5481_channels = common dso_local global i32 0, align 4
@MAX5481_COPY_NV_TO_AB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max5481_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5481_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.max5481_data*, align 8
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
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.iio_dev* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = call %struct.max5481_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.max5481_data* %24, %struct.max5481_data** %5, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %27 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %26, i32 0, i32 1
  store %struct.spi_device* %25, %struct.spi_device** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32* @of_device_get_match_data(i32* %29)
  %31 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %32 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %34 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %18
  %38 = load i32*, i32** @max5481_cfg, align 8
  %39 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %40 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %44 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %37, %18
  %46 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %47 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32* @max5481_info, i32** %60, align 8
  %61 = load i32, i32* @max5481_channels, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @max5481_channels, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %69 = load i32, i32* @MAX5481_COPY_NV_TO_AB, align 4
  %70 = call i32 @max5481_write_cmd(%struct.max5481_data* %68, i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %45
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %45
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = call i32 @iio_device_register(%struct.iio_dev* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %73, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.iio_dev*) #1

declare dso_local %struct.max5481_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32* @of_device_get_match_data(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @max5481_write_cmd(%struct.max5481_data*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
