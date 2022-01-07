; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_execute_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_execute_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i64, i64 }

@SETUP = common dso_local global i32 0, align 4
@DC_I2C_DDC1_SETUP = common dso_local global i32 0, align 4
@DC_I2C_DDC1_DATA_DRIVE_EN = common dso_local global i32 0, align 4
@DC_I2C_DDC1_CLK_DRIVE_EN = common dso_local global i32 0, align 4
@DC_I2C_DDC1_DATA_DRIVE_SEL = common dso_local global i32 0, align 4
@DC_I2C_DDC1_INTRA_TRANSACTION_DELAY = common dso_local global i32 0, align 4
@DC_I2C_DDC1_INTRA_BYTE_DELAY = common dso_local global i32 0, align 4
@DC_I2C_CONTROL = common dso_local global i32 0, align 4
@DC_I2C_SOFT_RESET = common dso_local global i32 0, align 4
@DC_I2C_SW_STATUS_RESET = common dso_local global i32 0, align 4
@DC_I2C_SEND_RESET = common dso_local global i32 0, align 4
@DC_I2C_GO = common dso_local global i32 0, align 4
@DC_I2C_TRANSACTION_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_i2c_hw*)* @execute_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_transaction(%struct.dce_i2c_hw* %0) #0 {
  %2 = alloca %struct.dce_i2c_hw*, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %2, align 8
  %3 = load i32, i32* @SETUP, align 4
  %4 = load i32, i32* @DC_I2C_DDC1_SETUP, align 4
  %5 = load i32, i32* @DC_I2C_DDC1_DATA_DRIVE_EN, align 4
  %6 = call i32 @FN(i32 %4, i32 %5)
  %7 = load i32, i32* @DC_I2C_DDC1_SETUP, align 4
  %8 = load i32, i32* @DC_I2C_DDC1_CLK_DRIVE_EN, align 4
  %9 = call i32 @FN(i32 %7, i32 %8)
  %10 = load i32, i32* @DC_I2C_DDC1_SETUP, align 4
  %11 = load i32, i32* @DC_I2C_DDC1_DATA_DRIVE_SEL, align 4
  %12 = call i32 @FN(i32 %10, i32 %11)
  %13 = load i32, i32* @DC_I2C_DDC1_SETUP, align 4
  %14 = load i32, i32* @DC_I2C_DDC1_INTRA_TRANSACTION_DELAY, align 4
  %15 = call i32 @FN(i32 %13, i32 %14)
  %16 = load i32, i32* @DC_I2C_DDC1_SETUP, align 4
  %17 = load i32, i32* @DC_I2C_DDC1_INTRA_BYTE_DELAY, align 4
  %18 = call i32 @FN(i32 %16, i32 %17)
  %19 = call i32 @REG_UPDATE_N(i32 %3, i32 5, i32 %6, i32 0, i32 %9, i32 0, i32 %12, i32 0, i32 %15, i32 0, i32 %18, i32 0)
  %20 = load i32, i32* @DC_I2C_CONTROL, align 4
  %21 = load i32, i32* @DC_I2C_SOFT_RESET, align 4
  %22 = load i32, i32* @DC_I2C_SW_STATUS_RESET, align 4
  %23 = load i32, i32* @DC_I2C_SEND_RESET, align 4
  %24 = load i32, i32* @DC_I2C_GO, align 4
  %25 = load i32, i32* @DC_I2C_TRANSACTION_COUNT, align 4
  %26 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %27 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @REG_UPDATE_5(i32 %20, i32 %21, i32 0, i32 %22, i32 0, i32 %23, i32 0, i32 %24, i32 0, i32 %25, i64 %29)
  %31 = load i32, i32* @DC_I2C_CONTROL, align 4
  %32 = load i32, i32* @DC_I2C_GO, align 4
  %33 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 1)
  %34 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %35 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %37 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @REG_UPDATE_N(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FN(i32, i32) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
