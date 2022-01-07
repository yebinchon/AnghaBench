; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_st_magn_i2c.c_st_magn_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_st_magn_i2c.c_st_magn_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.st_sensor_settings = type { i32 }
%struct.st_sensor_data = type { %struct.st_sensor_settings* }
%struct.iio_dev = type { i32 }

@st_magn_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device name %s not recognized.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @st_magn_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_magn_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.st_sensor_settings*, align 8
  %7 = alloca %struct.st_sensor_data*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @st_magn_of_match, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @st_sensors_of_name_probe(i32* %11, i32 %12, i32 %15, i32 4)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.st_sensor_settings* @st_magn_get_settings(i32 %19)
  store %struct.st_sensor_settings* %20, %struct.st_sensor_settings** %6, align 8
  %21 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %6, align 8
  %22 = icmp ne %struct.st_sensor_settings* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %34, i32 8)
  store %struct.iio_dev* %35, %struct.iio_dev** %8, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %37 = icmp ne %struct.iio_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %32
  %42 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %43 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %42)
  store %struct.st_sensor_data* %43, %struct.st_sensor_data** %7, align 8
  %44 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %6, align 8
  %45 = load %struct.st_sensor_data*, %struct.st_sensor_data** %7, align 8
  %46 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %45, i32 0, i32 0
  store %struct.st_sensor_settings* %44, %struct.st_sensor_settings** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @st_sensors_i2c_configure(%struct.iio_dev* %47, %struct.i2c_client* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %41
  %55 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %56 = call i32 @st_magn_common_probe(%struct.iio_dev* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %52, %38, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @st_sensors_of_name_probe(i32*, i32, i32, i32) #1

declare dso_local %struct.st_sensor_settings* @st_magn_get_settings(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_i2c_configure(%struct.iio_dev*, %struct.i2c_client*) #1

declare dso_local i32 @st_magn_common_probe(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
