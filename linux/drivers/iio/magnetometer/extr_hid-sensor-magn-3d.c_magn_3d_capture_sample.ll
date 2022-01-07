; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.magn_3d_state = type { i32** }

@CHANNEL_SCAN_INDEX_X = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @magn_3d_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magn_3d_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_sensor_hub_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iio_dev*, align 8
  %13 = alloca %struct.magn_3d_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call %struct.iio_dev* @platform_get_drvdata(i8* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %12, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %20 = call %struct.magn_3d_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.magn_3d_state* %20, %struct.magn_3d_state** %13, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %32 [
    i32 132, label %22
    i32 131, label %22
    i32 130, label %22
    i32 134, label %27
    i32 133, label %27
    i32 129, label %27
    i32 128, label %27
  ]

22:                                               ; preds = %5, %5, %5
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %23, 132
  %25 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %14, align 4
  br label %35

27:                                               ; preds = %5, %5, %5, %5
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %28, 134
  %30 = load i32, i32* @CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP, align 4
  %31 = add i32 %29, %30
  store i32 %31, i32* %14, align 4
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %55

35:                                               ; preds = %27, %22
  %36 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %37 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %16, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.magn_3d_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
