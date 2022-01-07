; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-incl-3d.c_incl_3d_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-incl-3d.c_incl_3d_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.incl_3d_state = type { i8** }

@CHANNEL_SCAN_INDEX_X = common dso_local global i64 0, align 8
@CHANNEL_SCAN_INDEX_Y = common dso_local global i64 0, align 8
@CHANNEL_SCAN_INDEX_Z = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @incl_3d_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incl_3d_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.incl_3d_state*, align 8
  %13 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call %struct.iio_dev* @platform_get_drvdata(i8* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %17 = call %struct.incl_3d_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.incl_3d_state* %17, %struct.incl_3d_state** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %46 [
    i32 130, label %19
    i32 129, label %28
    i32 128, label %37
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.incl_3d_state*, %struct.incl_3d_state** %12, align 8
  %24 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %22, i8** %27, align 8
  br label %49

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.incl_3d_state*, %struct.incl_3d_state** %12, align 8
  %33 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i64, i64* @CHANNEL_SCAN_INDEX_Y, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8* %31, i8** %36, align 8
  br label %49

37:                                               ; preds = %5
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.incl_3d_state*, %struct.incl_3d_state** %12, align 8
  %42 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @CHANNEL_SCAN_INDEX_Z, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  br label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %37, %28, %19
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.incl_3d_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
