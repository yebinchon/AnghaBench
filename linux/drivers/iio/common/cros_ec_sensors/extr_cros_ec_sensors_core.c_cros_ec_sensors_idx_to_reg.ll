; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_idx_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_idx_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_sensors_core_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MOTIONSENSE_TYPE_ACCEL = common dso_local global i64 0, align 8
@EC_MEMMAP_ACC_DATA = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_MAX_AXIS = common dso_local global i32 0, align 4
@EC_MEMMAP_GYRO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_sensors_core_state*, i32)* @cros_ec_sensors_idx_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_sensors_idx_to_reg(%struct.cros_ec_sensors_core_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %5 = alloca i32, align 4
  store %struct.cros_ec_sensors_core_state* %0, %struct.cros_ec_sensors_core_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %7 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MOTIONSENSE_TYPE_ACCEL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @EC_MEMMAP_ACC_DATA, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %5, align 4
  %15 = add i32 1, %14
  %16 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %17 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add i32 %15, %22
  %24 = zext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 %13, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @EC_MEMMAP_GYRO_DATA, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = add i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
