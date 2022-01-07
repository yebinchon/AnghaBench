; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.dev_rot_state = type { i32 }

@HID_USAGE_SENSOR_ORIENT_QUATERNION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Recd Quat len:%zu::%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @dev_rot_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rot_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.dev_rot_state*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call %struct.iio_dev* @platform_get_drvdata(i8* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %16 = call %struct.dev_rot_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.dev_rot_state* %16, %struct.dev_rot_state** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_QUATERNION, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load %struct.dev_rot_state*, %struct.dev_rot_state** %12, align 8
  %22 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @memcpy(i32 %23, i8* %24, i32 4)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %28, i32 4)
  br label %30

30:                                               ; preds = %20, %5
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.dev_rot_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
