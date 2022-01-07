; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.als_state = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_INTENSITY = common dso_local global i64 0, align 8
@CHANNEL_SCAN_INDEX_ILLUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @als_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.als_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call %struct.iio_dev* @platform_get_drvdata(i8* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %18 = call %struct.als_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.als_state* %18, %struct.als_state** %12, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %38 [
    i32 128, label %25
  ]

25:                                               ; preds = %5
  %26 = load i8*, i8** %14, align 8
  %27 = load %struct.als_state*, %struct.als_state** %12, align 8
  %28 = getelementptr inbounds %struct.als_state, %struct.als_state* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* @CHANNEL_SCAN_INDEX_INTENSITY, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.als_state*, %struct.als_state** %12, align 8
  %34 = getelementptr inbounds %struct.als_state, %struct.als_state* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* @CHANNEL_SCAN_INDEX_ILLUM, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %32, i8** %37, align 8
  store i32 0, i32* %13, align 4
  br label %39

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %13, align 4
  ret i32 %40
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.als_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
