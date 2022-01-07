; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cros_ec_light_prox.c_cros_ec_light_prox_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cros_ec_light_prox.c_cros_ec_light_prox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.cros_ec_light_prox_state = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@IIO_PROXIMITY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_OFFSET = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_NO_VALUE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cros_ec_light_prox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_light_prox_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_light_prox_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.cros_ec_light_prox_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.cros_ec_light_prox_state* %17, %struct.cros_ec_light_prox_state** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %22 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %10, align 8
  switch i64 %25, label %148 [
    i64 128, label %26
    i64 129, label %48
    i64 131, label %70
    i64 130, label %114
  ]

26:                                               ; preds = %5
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IIO_PROXIMITY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = load i32, i32* %15, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @cros_ec_sensors_read_cmd(%struct.iio_dev* %33, i32 %35, i32* %12)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %156

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %14, align 4
  br label %47

44:                                               ; preds = %26
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %44, %40
  br label %156

48:                                               ; preds = %5
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IIO_LIGHT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 1, %56
  %58 = call i32 @cros_ec_sensors_read_cmd(%struct.iio_dev* %55, i32 %57, i32* %12)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %156

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %14, align 4
  br label %69

66:                                               ; preds = %48
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %156

70:                                               ; preds = %5
  %71 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_OFFSET, align 4
  %72 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %73 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %77 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %82 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %81, i32 0, i32 0
  %83 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_17__* %82, i32 0)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %156

87:                                               ; preds = %70
  %88 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %89 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %98 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 4
  %103 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %104 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %113, i32* %14, align 4
  br label %156

114:                                              ; preds = %5
  %115 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %116 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %117 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @EC_MOTION_SENSE_NO_VALUE, align 4
  %121 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %122 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 8
  %126 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %127 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %126, i32 0, i32 0
  %128 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_17__* %127, i32 0)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %114
  br label %156

132:                                              ; preds = %114
  %133 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %134 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = ashr i32 %140, 16
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %13, align 4
  %144 = and i32 %143, 65535
  %145 = mul nsw i32 %144, 100
  %146 = load i32*, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %147, i32* %14, align 4
  br label %156

148:                                              ; preds = %5
  %149 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %150 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %149, i32 0, i32 0
  %151 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @cros_ec_sensors_core_read(%struct.TYPE_17__* %150, %struct.iio_chan_spec* %151, i32* %152, i32* %153, i64 %154)
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %148, %132, %131, %87, %86, %69, %61, %47, %39
  %157 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %158 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %14, align 4
  ret i32 %161
}

declare dso_local %struct.cros_ec_light_prox_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_sensors_read_cmd(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_read(%struct.TYPE_17__*, %struct.iio_chan_spec*, i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
