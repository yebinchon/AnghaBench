; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_sensors_core_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iio_chan_spec = type { i32 }

@MOTIONSENSE_CMD_SENSOR_ODR = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_EC_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_sensors_core_write(%struct.cros_ec_sensors_core_state* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cros_ec_sensors_core_state* %0, %struct.cros_ec_sensors_core_state** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  switch i64 %12, label %48 [
    i64 129, label %13
    i64 128, label %29
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_ODR, align 4
  %15 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %16 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %20 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %24 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %28 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %27, i32 0)
  store i32 %28, i32* %11, align 4
  br label %51

29:                                               ; preds = %5
  %30 = load i32, i32* @MOTIONSENSE_CMD_EC_RATE, align 4
  %31 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %32 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %36 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %40 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %51

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %6, align 8
  %47 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %51

48:                                               ; preds = %5
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %44, %43, %13
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
