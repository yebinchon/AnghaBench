; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_hid-sensor-accel-3d.c_accel_3d_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_hid-sensor-accel-3d.c_accel_3d_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.accel_3d_state = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@accel_3d_addresses = common dso_local global i32* null, align 8
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @accel_3d_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accel_3d_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.accel_3d_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hid_sensor_hub_device*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.accel_3d_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.accel_3d_state* %19, %struct.accel_3d_state** %12, align 8
  store i32 -1, i32* %13, align 4
  %20 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %21 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %22, align 8
  store %struct.hid_sensor_hub_device* %23, %struct.hid_sensor_hub_device** %17, align 8
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %115 [
    i64 130, label %27
    i64 128, label %85
    i64 131, label %97
    i64 129, label %103
    i64 132, label %109
  ]

27:                                               ; preds = %5
  %28 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %29 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %28, i32 0, i32 4
  %30 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %29, i32 1)
  %31 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %32 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %41 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %40, i32 0, i32 5
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i32*, i32** @accel_3d_addresses, align 8
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %27
  %58 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %59 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %60, align 8
  %62 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %17, align 8
  %63 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @sensor_hub_input_attr_get_raw_value(%struct.hid_sensor_hub_device* %61, i32 %64, i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %80

73:                                               ; preds = %27
  %74 = load i32*, i32** %9, align 8
  store i32 0, i32* %74, align 4
  %75 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %76 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %75, i32 0, i32 4
  %77 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %76, i32 0)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %120

80:                                               ; preds = %57
  %81 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %82 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %81, i32 0, i32 4
  %83 = call i32 @hid_sensor_power_state(%struct.TYPE_6__* %82, i32 0)
  %84 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %84, i32* %15, align 4
  br label %118

85:                                               ; preds = %5
  %86 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %87 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %91 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %95 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %15, align 4
  br label %118

97:                                               ; preds = %5
  %98 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %99 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %102, i32* %15, align 4
  br label %118

103:                                              ; preds = %5
  %104 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %105 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %104, i32 0, i32 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__* %105, i32* %106, i32* %107)
  store i32 %108, i32* %15, align 4
  br label %118

109:                                              ; preds = %5
  %110 = load %struct.accel_3d_state*, %struct.accel_3d_state** %12, align 8
  %111 = getelementptr inbounds %struct.accel_3d_state, %struct.accel_3d_state* %110, i32 0, i32 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__* %111, i32* %112, i32* %113)
  store i32 %114, i32* %15, align 4
  br label %118

115:                                              ; preds = %5
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %115, %109, %103, %97, %85, %80
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %73
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.accel_3d_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_power_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sensor_hub_input_attr_get_raw_value(%struct.hid_sensor_hub_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
