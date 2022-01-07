; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_phys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_phys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs5000_ts_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.mcs_platform_data = type { i32, i32 }

@MCS5000_TS_OP_MODE = common dso_local global i32 0, align 4
@RESET_EXT_SOFT = common dso_local global i32 0, align 4
@OP_MODE_SLEEP = common dso_local global i32 0, align 4
@MCS5000_TS_X_SIZE_UPPER = common dso_local global i32 0, align 4
@MCS5000_TS_X_SIZE_LOWER = common dso_local global i32 0, align 4
@MCS5000_TS_Y_SIZE_UPPER = common dso_local global i32 0, align 4
@MCS5000_TS_Y_SIZE_LOWER = common dso_local global i32 0, align 4
@OP_MODE_ACTIVE = common dso_local global i32 0, align 4
@REPORT_RATE_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcs5000_ts_data*, %struct.mcs_platform_data*)* @mcs5000_ts_phys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs5000_ts_phys_init(%struct.mcs5000_ts_data* %0, %struct.mcs_platform_data* %1) #0 {
  %3 = alloca %struct.mcs5000_ts_data*, align 8
  %4 = alloca %struct.mcs_platform_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.mcs5000_ts_data* %0, %struct.mcs5000_ts_data** %3, align 8
  store %struct.mcs_platform_data* %1, %struct.mcs_platform_data** %4, align 8
  %6 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %3, align 8
  %7 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %6, i32 0, i32 0
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load i32, i32* @MCS5000_TS_OP_MODE, align 4
  %11 = load i32, i32* @RESET_EXT_SOFT, align 4
  %12 = load i32, i32* @OP_MODE_SLEEP, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %9, i32 %10, i32 %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load i32, i32* @MCS5000_TS_X_SIZE_UPPER, align 4
  %17 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %15, i32 %16, i32 %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = load i32, i32* @MCS5000_TS_X_SIZE_LOWER, align 4
  %24 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %22, i32 %23, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @MCS5000_TS_Y_SIZE_UPPER, align 4
  %31 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %29, i32 %30, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @MCS5000_TS_Y_SIZE_LOWER, align 4
  %38 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %36, i32 %37, i32 %41)
  %43 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %3, align 8
  %44 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %43, i32 0, i32 0
  %45 = load %struct.i2c_client*, %struct.i2c_client** %44, align 8
  %46 = load i32, i32* @MCS5000_TS_OP_MODE, align 4
  %47 = load i32, i32* @OP_MODE_ACTIVE, align 4
  %48 = load i32, i32* @REPORT_RATE_80, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %45, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
