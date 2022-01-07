; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_iio_hwmon.c_iio_hwmon_read_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_iio_hwmon.c_iio_hwmon_read_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.iio_hwmon_state = type { %struct.iio_channel* }
%struct.iio_channel = type { i32 }

@IIO_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @iio_hwmon_read_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_hwmon_read_val(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.iio_hwmon_state*, align 8
  %12 = alloca %struct.iio_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.iio_hwmon_state* @dev_get_drvdata(%struct.device* %16)
  store %struct.iio_hwmon_state* %17, %struct.iio_hwmon_state** %11, align 8
  %18 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %11, align 8
  %19 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %18, i32 0, i32 0
  %20 = load %struct.iio_channel*, %struct.iio_channel** %19, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %20, i64 %23
  store %struct.iio_channel* %24, %struct.iio_channel** %12, align 8
  %25 = load %struct.iio_channel*, %struct.iio_channel** %12, align 8
  %26 = call i32 @iio_read_channel_processed(%struct.iio_channel* %25, i32* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.iio_channel*, %struct.iio_channel** %12, align 8
  %33 = call i32 @iio_get_channel_type(%struct.iio_channel* %32, i32* %13)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @IIO_POWER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 1000
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %36, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_hwmon_state* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @iio_read_channel_processed(%struct.iio_channel*, i32*) #1

declare dso_local i32 @iio_get_channel_type(%struct.iio_channel*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
