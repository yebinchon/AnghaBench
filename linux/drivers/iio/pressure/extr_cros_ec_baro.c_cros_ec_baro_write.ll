; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_cros_ec_baro.c_cros_ec_baro_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_cros_ec_baro.c_cros_ec_baro_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_baro_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @cros_ec_baro_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_baro_write(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_baro_state*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.cros_ec_baro_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.cros_ec_baro_state* %14, %struct.cros_ec_baro_state** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %16 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* %10, align 8
  switch i64 %19, label %45 [
    i64 128, label %20
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %22 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %23 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %28 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %33 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %38 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %37, i32 0, i32 0
  %39 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_7__* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %20
  br label %53

45:                                               ; preds = %5
  %46 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %47 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %46, i32 0, i32 0
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @cros_ec_sensors_core_write(%struct.TYPE_7__* %47, %struct.iio_chan_spec* %48, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = load %struct.cros_ec_baro_state*, %struct.cros_ec_baro_state** %11, align 8
  %55 = getelementptr inbounds %struct.cros_ec_baro_state, %struct.cros_ec_baro_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local %struct.cros_ec_baro_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_write(%struct.TYPE_7__*, %struct.iio_chan_spec*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
