; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.adis16260 = type { i32, %struct.TYPE_4__* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adis16260_chip_info_table = common dso_local global %struct.TYPE_4__* null, align 8
@adis16260_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adis16260_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16260_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16260_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.adis16260*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %11 = icmp ne %struct.spi_device_id* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %17, i32 16)
  store %struct.iio_dev* %18, %struct.iio_dev** %6, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = icmp ne %struct.iio_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %104

24:                                               ; preds = %15
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = call %struct.adis16260* @iio_priv(%struct.iio_dev* %25)
  store %struct.adis16260* %26, %struct.adis16260** %5, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.iio_dev* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adis16260_chip_info_table, align 8
  %31 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %32 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %36 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 3
  store i32* @adis16260_info, i32** %48, align 8
  %49 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %50 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %57 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %67 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %66, i32 0, i32 0
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = call i32 @adis_init(i32* %67, %struct.iio_dev* %68, %struct.spi_device* %69, i32* @adis16260_data)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %24
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %104

75:                                               ; preds = %24
  %76 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %77 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %76, i32 0, i32 0
  %78 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %79 = call i32 @adis_setup_buffer_and_trigger(i32* %77, %struct.iio_dev* %78, i32* null)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %104

84:                                               ; preds = %75
  %85 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %86 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %85, i32 0, i32 0
  %87 = call i32 @adis_initial_startup(i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %98

91:                                               ; preds = %84
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = call i32 @iio_device_register(%struct.iio_dev* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %104

98:                                               ; preds = %96, %90
  %99 = load %struct.adis16260*, %struct.adis16260** %5, align 8
  %100 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %99, i32 0, i32 0
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = call i32 @adis_cleanup_buffer_and_trigger(i32* %100, %struct.iio_dev* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %97, %82, %73, %21, %12
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.adis16260* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @adis_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(i32*, %struct.iio_dev*, i32*) #1

declare dso_local i32 @adis_initial_startup(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
