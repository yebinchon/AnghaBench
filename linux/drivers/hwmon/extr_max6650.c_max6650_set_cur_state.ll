; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.max6650_data* }
%struct.max6650_data = type { i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX6650_CFG_V12 = common dso_local global i32 0, align 4
@MAX6650_REG_DAC = common dso_local global i32 0, align 4
@MAX6650_CFG_MODE_OPEN_LOOP = common dso_local global i32 0, align 4
@MAX6650_CFG_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @max6650_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.max6650_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %3, align 8
  %9 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 0
  %10 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  store %struct.max6650_data* %10, %struct.max6650_data** %5, align 8
  %11 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %12 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %11, i32 0, i32 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @clamp_val(i64 %14, i32 0, i32 255)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %17 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %21 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX6650_CFG_V12, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @pwm_to_dac(i64 %19, i32 %24)
  %26 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %27 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* @MAX6650_REG_DAC, align 4
  %30 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %31 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %28, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %2
  %37 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MAX6650_CFG_MODE_OPEN_LOOP, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @MAX6650_CFG_MODE_OFF, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @max6650_set_operating_mode(%struct.max6650_data* %37, i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %49 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %2
  %51 = load %struct.max6650_data*, %struct.max6650_data** %5, align 8
  %52 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_to_dac(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @max6650_set_operating_mode(%struct.max6650_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
