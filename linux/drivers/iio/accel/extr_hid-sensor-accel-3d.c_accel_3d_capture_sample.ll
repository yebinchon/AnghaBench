; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_hid-sensor-accel-3d.c_accel_3d_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_hid-sensor-accel-3d.c_accel_3d_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.accel_3d_state = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @accel_3d_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accel_3d_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.accel_3d_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call %struct.iio_dev* @platform_get_drvdata(i8* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %18 = call %struct.accel_3d_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.accel_3d_state* %18, %struct.accel_3d_state** %12, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %45 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %36
  ]

22:                                               ; preds = %5, %5, %5
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 %23, 131
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %29 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32 %27, i32* %35, align 4
  store i32 0, i32* %14, align 4
  br label %46

36:                                               ; preds = %5
  %37 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %38 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %37, i32 0, i32 0
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hid_sensor_convert_timestamp(i32* %38, i32 %41)
  %43 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %44 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %46

45:                                               ; preds = %5
  br label %46

46:                                               ; preds = %45, %36, %22
  %47 = load i32, i32* %14, align 4
  ret i32 %47
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.accel_3d_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_convert_timestamp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
