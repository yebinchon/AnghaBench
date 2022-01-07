; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_i2c.c_st_accel_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_i2c.c_st_accel_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.st_sensor_settings = type { i32 }
%struct.st_sensor_data = type { %struct.st_sensor_settings* }
%struct.iio_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"device name %s not recognized.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @st_accel_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_accel_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.st_sensor_settings*, align 8
  %5 = alloca %struct.st_sensor_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i8* @device_get_match_data(i32* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlcpy(i32 %17, i8* %18, i32 4)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.st_sensor_settings* @st_accel_get_settings(i32 %23)
  store %struct.st_sensor_settings* %24, %struct.st_sensor_settings** %4, align 8
  %25 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %26 = icmp ne %struct.st_sensor_settings* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %20
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %38, i32 8)
  store %struct.iio_dev* %39, %struct.iio_dev** %6, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = icmp ne %struct.iio_dev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %46)
  store %struct.st_sensor_data* %47, %struct.st_sensor_data** %5, align 8
  %48 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %49 = load %struct.st_sensor_data*, %struct.st_sensor_data** %5, align 8
  %50 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %49, i32 0, i32 0
  store %struct.st_sensor_settings* %48, %struct.st_sensor_settings** %50, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = call i32 @st_sensors_i2c_configure(%struct.iio_dev* %51, %struct.i2c_client* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %45
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = call i32 @st_accel_common_probe(%struct.iio_dev* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %56, %42, %27
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @device_get_match_data(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.st_sensor_settings* @st_accel_get_settings(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_i2c_configure(%struct.iio_dev*, %struct.i2c_client*) #1

declare dso_local i32 @st_accel_common_probe(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
