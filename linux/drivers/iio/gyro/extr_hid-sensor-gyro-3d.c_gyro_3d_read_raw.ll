; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_hid-sensor-gyro-3d.c_gyro_3d_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_hid-sensor-gyro-3d.c_gyro_3d_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.gyro_3d_state = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@gyro_3d_addresses = common dso_local global i32* null, align 8
@HID_USAGE_SENSOR_GYRO_3D = common dso_local global i32 0, align 4
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @gyro_3d_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gyro_3d_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gyro_3d_state*, align 8
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
  %18 = call %struct.gyro_3d_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.gyro_3d_state* %18, %struct.gyro_3d_state** %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %108 [
    i64 130, label %22
    i64 128, label %78
    i64 131, label %90
    i64 129, label %96
    i64 132, label %102
  ]

22:                                               ; preds = %5
  %23 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %24 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %23, i32 0, i32 4
  %25 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %24, i32 1)
  %26 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %27 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %26, i32 0, i32 5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %36 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %35, i32 0, i32 5
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i32*, i32** @gyro_3d_addresses, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %22
  %53 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %54 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HID_USAGE_SENSOR_GYRO_3D, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @sensor_hub_input_attr_get_raw_value(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %73

66:                                               ; preds = %22
  %67 = load i32*, i32** %9, align 8
  store i32 0, i32* %67, align 4
  %68 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %69 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %68, i32 0, i32 4
  %70 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %69, i32 0)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %113

73:                                               ; preds = %52
  %74 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %75 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %74, i32 0, i32 4
  %76 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %75, i32 0)
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %15, align 4
  br label %111

78:                                               ; preds = %5
  %79 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %80 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %84 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %88 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %15, align 4
  br label %111

90:                                               ; preds = %5
  %91 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %92 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %95, i32* %15, align 4
  br label %111

96:                                               ; preds = %5
  %97 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %98 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %97, i32 0, i32 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__* %98, i32* %99, i32* %100)
  store i32 %101, i32* %15, align 4
  br label %111

102:                                              ; preds = %5
  %103 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %12, align 8
  %104 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %103, i32 0, i32 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__* %104, i32* %105, i32* %106)
  store i32 %107, i32* %15, align 4
  br label %111

108:                                              ; preds = %5
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %102, %96, %90, %78, %73
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %66
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.gyro_3d_state* @iio_priv(%struct.iio_dev*) #1

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
