; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.magn_3d_state = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@magn_3d_addresses = common dso_local global i32* null, align 8
@HID_USAGE_SENSOR_COMPASS_3D = common dso_local global i32 0, align 4
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @magn_3d_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magn_3d_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.magn_3d_state*, align 8
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
  %18 = call %struct.magn_3d_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.magn_3d_state* %18, %struct.magn_3d_state** %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %164 [
    i64 132, label %22
    i64 130, label %78
    i64 133, label %116
    i64 131, label %138
    i64 134, label %144
  ]

22:                                               ; preds = %5
  %23 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %24 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %23, i32 0, i32 1
  %25 = call i32 @hid_sensor_power_state(%struct.TYPE_10__* %24, i32 1)
  %26 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %27 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %36 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i32*, i32** @magn_3d_addresses, align 8
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
  %53 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %54 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HID_USAGE_SENSOR_COMPASS_3D, align 4
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
  %68 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %69 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %68, i32 0, i32 1
  %70 = call i32 @hid_sensor_power_state(%struct.TYPE_10__* %69, i32 0)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %169

73:                                               ; preds = %52
  %74 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %75 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %74, i32 0, i32 1
  %76 = call i32 @hid_sensor_power_state(%struct.TYPE_10__* %75, i32 0)
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %15, align 4
  br label %167

78:                                               ; preds = %5
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %112 [
    i32 129, label %82
    i32 128, label %97
  ]

82:                                               ; preds = %78
  %83 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %84 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %89 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %94 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %15, align 4
  br label %115

97:                                               ; preds = %78
  %98 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %99 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %104 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %109 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %15, align 4
  br label %115

112:                                              ; preds = %78
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %112, %97, %82
  br label %167

116:                                              ; preds = %5
  %117 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %118 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %134 [
    i32 129, label %120
    i32 128, label %127
  ]

120:                                              ; preds = %116
  %121 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %122 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %126, i32* %15, align 4
  br label %137

127:                                              ; preds = %116
  %128 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %129 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %133, i32* %15, align 4
  br label %137

134:                                              ; preds = %116
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %127, %120
  br label %167

138:                                              ; preds = %5
  %139 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %140 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %139, i32 0, i32 1
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_10__* %140, i32* %141, i32* %142)
  store i32 %143, i32* %15, align 4
  br label %167

144:                                              ; preds = %5
  %145 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %146 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %160 [
    i32 129, label %148
    i32 128, label %154
  ]

148:                                              ; preds = %144
  %149 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %150 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %149, i32 0, i32 1
  %151 = load i32*, i32** %9, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_10__* %150, i32* %151, i32* %152)
  store i32 %153, i32* %15, align 4
  br label %163

154:                                              ; preds = %144
  %155 = load %struct.magn_3d_state*, %struct.magn_3d_state** %12, align 8
  %156 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_10__* %156, i32* %157, i32* %158)
  store i32 %159, i32* %15, align 4
  br label %163

160:                                              ; preds = %144
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %160, %154, %148
  br label %167

164:                                              ; preds = %5
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %164, %163, %138, %137, %115, %73
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %66
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local %struct.magn_3d_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_power_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sensor_hub_input_attr_get_raw_value(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hid_sensor_read_samp_freq_value(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @hid_sensor_read_raw_hyst_value(%struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
