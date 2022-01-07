; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_spi.c_st_press_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_spi.c_st_press_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.st_sensor_settings = type { i32 }
%struct.st_sensor_data = type { %struct.st_sensor_settings* }
%struct.iio_dev = type { i32 }

@st_press_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device name %s not recognized.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st_press_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_press_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.st_sensor_settings*, align 8
  %5 = alloca %struct.st_sensor_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @st_press_of_match, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @st_sensors_of_name_probe(i32* %9, i32 %10, i32 %13, i32 4)
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.st_sensor_settings* @st_press_get_settings(i32 %17)
  store %struct.st_sensor_settings* %18, %struct.st_sensor_settings** %4, align 8
  %19 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %20 = icmp ne %struct.st_sensor_settings* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %1
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %32, i32 8)
  store %struct.iio_dev* %33, %struct.iio_dev** %6, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = icmp ne %struct.iio_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %30
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %40)
  store %struct.st_sensor_data* %41, %struct.st_sensor_data** %5, align 8
  %42 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %43 = load %struct.st_sensor_data*, %struct.st_sensor_data** %5, align 8
  %44 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %43, i32 0, i32 0
  store %struct.st_sensor_settings* %42, %struct.st_sensor_settings** %44, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = call i32 @st_sensors_spi_configure(%struct.iio_dev* %45, %struct.spi_device* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %60

52:                                               ; preds = %39
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = call i32 @st_press_common_probe(%struct.iio_dev* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %50, %36, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @st_sensors_of_name_probe(i32*, i32, i32, i32) #1

declare dso_local %struct.st_sensor_settings* @st_press_get_settings(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_spi_configure(%struct.iio_dev*, %struct.spi_device*) #1

declare dso_local i32 @st_press_common_probe(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
