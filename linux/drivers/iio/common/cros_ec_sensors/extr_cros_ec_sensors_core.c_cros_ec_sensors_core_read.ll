; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_sensors_core_state = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.iio_chan_spec = type { i32 }

@MOTIONSENSE_CMD_EC_RATE = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_NO_VALUE = common dso_local global i8* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_ODR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_sensors_core_read(%struct.cros_ec_sensors_core_state* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cros_ec_sensors_core_state* %0, %struct.cros_ec_sensors_core_state** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  switch i64 %12, label %61 [
    i64 128, label %13
    i64 129, label %37
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @MOTIONSENSE_CMD_EC_RATE, align 4
  %15 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %16 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load i8*, i8** @EC_MOTION_SENSE_NO_VALUE, align 8
  %19 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %20 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %24 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %64

28:                                               ; preds = %13
  %29 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %30 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %11, align 4
  br label %64

37:                                               ; preds = %5
  %38 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_ODR, align 4
  %39 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %40 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** @EC_MOTION_SENSE_NO_VALUE, align 8
  %43 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %44 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %48 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %47, i32 0)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %64

52:                                               ; preds = %37
  %53 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %54 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %5
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %52, %51, %28, %27
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
