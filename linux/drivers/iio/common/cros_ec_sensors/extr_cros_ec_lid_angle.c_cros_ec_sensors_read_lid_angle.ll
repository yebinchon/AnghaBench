; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_lid_angle.c_cros_ec_sensors_read_lid_angle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_lid_angle.c_cros_ec_sensors_read_lid_angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.cros_ec_sensors_core_state = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MOTIONSENSE_CMD_LID_ANGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to read lid angle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, i32*)* @cros_ec_sensors_read_lid_angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_sensors_read_lid_angle(%struct.iio_dev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.cros_ec_sensors_core_state* %11, %struct.cros_ec_sensors_core_state** %8, align 8
  %12 = load i32, i32* @MOTIONSENSE_CMD_LID_ANGLE, align 4
  %13 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %8, align 8
  %14 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %8, align 8
  %17 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %16, i32 4)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %8, align 8
  %27 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
