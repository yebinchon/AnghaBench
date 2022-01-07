; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.als_state = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HID_USAGE_SENSOR_LIGHT_ILLUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ALS = common dso_local global i32 0, align 4
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @als_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.als_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.als_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.als_state* %18, %struct.als_state** %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %96 [
    i64 130, label %22
    i64 128, label %66
    i64 131, label %78
    i64 129, label %84
    i64 132, label %90
  ]

22:                                               ; preds = %5
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %36 [
    i32 133, label %26
    i32 134, label %26
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.als_state*, %struct.als_state** %12, align 8
  %28 = getelementptr inbounds %struct.als_state, %struct.als_state* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.als_state*, %struct.als_state** %12, align 8
  %32 = getelementptr inbounds %struct.als_state, %struct.als_state* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @HID_USAGE_SENSOR_LIGHT_ILLUM, align 4
  store i32 %35, i32* %14, align 4
  br label %37

36:                                               ; preds = %22
  store i32 -1, i32* %13, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %13, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.als_state*, %struct.als_state** %12, align 8
  %42 = getelementptr inbounds %struct.als_state, %struct.als_state* %41, i32 0, i32 4
  %43 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %42, i32 1)
  %44 = load %struct.als_state*, %struct.als_state** %12, align 8
  %45 = getelementptr inbounds %struct.als_state, %struct.als_state* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HID_USAGE_SENSOR_ALS, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @sensor_hub_input_attr_get_raw_value(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.als_state*, %struct.als_state** %12, align 8
  %58 = getelementptr inbounds %struct.als_state, %struct.als_state* %57, i32 0, i32 4
  %59 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %58, i32 0)
  br label %64

60:                                               ; preds = %37
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %101

64:                                               ; preds = %40
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %15, align 4
  br label %99

66:                                               ; preds = %5
  %67 = load %struct.als_state*, %struct.als_state** %12, align 8
  %68 = getelementptr inbounds %struct.als_state, %struct.als_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.als_state*, %struct.als_state** %12, align 8
  %72 = getelementptr inbounds %struct.als_state, %struct.als_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.als_state*, %struct.als_state** %12, align 8
  %76 = getelementptr inbounds %struct.als_state, %struct.als_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  br label %99

78:                                               ; preds = %5
  %79 = load %struct.als_state*, %struct.als_state** %12, align 8
  %80 = getelementptr inbounds %struct.als_state, %struct.als_state* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %83, i32* %15, align 4
  br label %99

84:                                               ; preds = %5
  %85 = load %struct.als_state*, %struct.als_state** %12, align 8
  %86 = getelementptr inbounds %struct.als_state, %struct.als_state* %85, i32 0, i32 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__* %86, i32* %87, i32* %88)
  store i32 %89, i32* %15, align 4
  br label %99

90:                                               ; preds = %5
  %91 = load %struct.als_state*, %struct.als_state** %12, align 8
  %92 = getelementptr inbounds %struct.als_state, %struct.als_state* %91, i32 0, i32 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__* %92, i32* %93, i32* %94)
  store i32 %95, i32* %15, align 4
  br label %99

96:                                               ; preds = %5
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %96, %90, %84, %78, %66, %64
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %60
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.als_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_power_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sensor_hub_input_attr_get_raw_value(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
