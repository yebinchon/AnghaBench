; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hid_humidity_state = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IIO_HUMIDITYRELATIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_HUMIDITY = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY = common dso_local global i32 0, align 4
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @humidity_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @humidity_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hid_humidity_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.hid_humidity_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.hid_humidity_state* %14, %struct.hid_humidity_state** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %82 [
    i64 130, label %16
    i64 128, label %52
    i64 131, label %64
    i64 129, label %70
    i64 132, label %76
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IIO_HUMIDITYRELATIVE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %85

25:                                               ; preds = %16
  %26 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %27 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %26, i32 0, i32 4
  %28 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %27, i32 1)
  %29 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %30 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE_SENSOR_HUMIDITY, align 4
  %34 = load i32, i32* @HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY, align 4
  %35 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %36 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %40 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %41 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @sensor_hub_input_attr_get_raw_value(i32 %32, i32 %33, i32 %34, i32 %38, i32 %39, i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %49 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %48, i32 0, i32 4
  %50 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %49, i32 0)
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %85

52:                                               ; preds = %5
  %53 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %54 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %58 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %62 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %85

64:                                               ; preds = %5
  %65 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %66 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %69, i32* %6, align 4
  br label %85

70:                                               ; preds = %5
  %71 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %72 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %71, i32 0, i32 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__* %72, i32* %73, i32* %74)
  store i32 %75, i32* %6, align 4
  br label %85

76:                                               ; preds = %5
  %77 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %12, align 8
  %78 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %77, i32 0, i32 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__* %78, i32* %79, i32* %80)
  store i32 %81, i32* %6, align 4
  br label %85

82:                                               ; preds = %5
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %76, %70, %64, %52, %25, %22
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.hid_humidity_state* @iio_priv(%struct.iio_dev*) #1

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
