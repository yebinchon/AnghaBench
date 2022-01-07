; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_cros_ec_baro.c_cros_ec_baro_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_cros_ec_baro.c_cros_ec_baro_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_baro_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_NO_VALUE = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cros_ec_baro_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_baro_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_baro_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.cros_ec_baro_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.cros_ec_baro_state* %16, %struct.cros_ec_baro_state** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %21 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i64, i64* %10, align 8
  switch i64 %24, label %68 [
    i64 129, label %25
    i64 128, label %37
  ]

25:                                               ; preds = %5
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = load i32, i32* %14, align 4
  %28 = shl i32 1, %27
  %29 = call i32 @cros_ec_sensors_read_cmd(%struct.iio_dev* %26, i32 %28, i32* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %76

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %13, align 4
  br label %76

37:                                               ; preds = %5
  %38 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %39 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %40 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @EC_MOTION_SENSE_NO_VALUE, align 4
  %44 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %45 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  %49 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %50 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %49, i32 0, i32 0
  %51 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_11__* %50, i32 0)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %76

55:                                               ; preds = %37
  %56 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %57 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @CROS_EC_SENSOR_BITS, align 4
  %65 = shl i32 10, %64
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %67, i32* %13, align 4
  br label %76

68:                                               ; preds = %5
  %69 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %70 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %69, i32 0, i32 0
  %71 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @cros_ec_sensors_core_read(%struct.TYPE_11__* %70, %struct.iio_chan_spec* %71, i32* %72, i32* %73, i64 %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %68, %55, %54, %33, %32
  %77 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %78 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local %struct.cros_ec_baro_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_sensors_read_cmd(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_read(%struct.TYPE_11__*, %struct.iio_chan_spec*, i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
