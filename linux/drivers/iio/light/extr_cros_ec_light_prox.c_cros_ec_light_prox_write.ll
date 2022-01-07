; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cros_ec_light_prox.c_cros_ec_light_prox_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cros_ec_light_prox.c_cros_ec_light_prox_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_light_prox_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@MOTIONSENSE_CMD_SENSOR_OFFSET = common dso_local global i32 0, align 4
@MOTION_SENSE_SET_OFFSET = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_INVALID_CALIB_TEMP = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @cros_ec_light_prox_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_light_prox_write(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_light_prox_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.cros_ec_light_prox_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.cros_ec_light_prox_state* %15, %struct.cros_ec_light_prox_state** %11, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %20 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i64, i64* %10, align 8
  switch i64 %23, label %87 [
    i64 129, label %24
    i64 128, label %68
  ]

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %27 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %25, i32* %33, align 4
  %34 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_OFFSET, align 4
  %35 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %36 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @MOTION_SENSE_SET_OFFSET, align 4
  %40 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %41 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %39, i32* %44, align 4
  %45 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %46 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %53 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %51, i32* %58, align 4
  %59 = load i32, i32* @EC_MOTION_SENSE_INVALID_CALIB_TEMP, align 4
  %60 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %61 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 8
  %65 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %66 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %65, i32 0, i32 0
  %67 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_11__* %66, i32 0)
  store i32 %67, i32* %12, align 4
  br label %95

68:                                               ; preds = %5
  %69 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %70 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %71 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %9, align 4
  %77 = sdiv i32 %76, 100
  %78 = or i32 %75, %77
  %79 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %80 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %85 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %84, i32 0, i32 0
  %86 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_11__* %85, i32 0)
  store i32 %86, i32* %12, align 4
  br label %95

87:                                               ; preds = %5
  %88 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %89 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %88, i32 0, i32 0
  %90 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @cros_ec_sensors_core_write(%struct.TYPE_11__* %89, %struct.iio_chan_spec* %90, i32 %91, i32 %92, i64 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %87, %68, %24
  %96 = load %struct.cros_ec_light_prox_state*, %struct.cros_ec_light_prox_state** %11, align 8
  %97 = getelementptr inbounds %struct.cros_ec_light_prox_state, %struct.cros_ec_light_prox_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %12, align 4
  ret i32 %100
}

declare dso_local %struct.cros_ec_light_prox_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_write(%struct.TYPE_11__*, %struct.iio_chan_spec*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
