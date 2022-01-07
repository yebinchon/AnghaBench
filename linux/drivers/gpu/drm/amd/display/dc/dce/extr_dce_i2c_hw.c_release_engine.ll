; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_release_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_release_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, i32 }

@DC_I2C_SW_STATUS = common dso_local global i32 0, align 4
@DC_I2C_CONTROL = common dso_local global i32 0, align 4
@DC_I2C_SOFT_RESET = common dso_local global i32 0, align 4
@DC_I2C_SW_STATUS_RESET = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@DC_I2C_DDC1_ENABLE = common dso_local global i32 0, align 4
@DC_I2C_ARBITRATION = common dso_local global i32 0, align 4
@DC_I2C_SW_DONE_USING_I2C_REG = common dso_local global i32 0, align 4
@DC_I2C_SW_USE_I2C_REG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_i2c_hw*)* @release_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_engine(%struct.dce_i2c_hw* %0) #0 {
  %2 = alloca %struct.dce_i2c_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %2, align 8
  %5 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %6 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %7 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_speed(%struct.dce_i2c_hw* %5, i32 %8)
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %11 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %12 = call i32 @REG_GET(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @DC_I2C_CONTROL, align 4
  %20 = load i32, i32* @DC_I2C_SOFT_RESET, align 4
  %21 = load i32, i32* @DC_I2C_SW_STATUS_RESET, align 4
  %22 = call i32 @REG_UPDATE_2(i32 %19, i32 %20, i32 1, i32 %21, i32 1)
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @DC_I2C_CONTROL, align 4
  %25 = load i32, i32* @DC_I2C_SW_STATUS_RESET, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %29 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @SETUP, align 4
  %34 = load i32, i32* @SETUP, align 4
  %35 = load i32, i32* @DC_I2C_DDC1_ENABLE, align 4
  %36 = call i32 @FN(i32 %34, i32 %35)
  %37 = call i32 @REG_UPDATE_N(i32 %33, i32 1, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* @DC_I2C_ARBITRATION, align 4
  %40 = load i32, i32* @DC_I2C_SW_DONE_USING_I2C_REG, align 4
  %41 = load i32, i32* @DC_I2C_SW_USE_I2C_REG_REQ, align 4
  %42 = call i32 @REG_UPDATE_2(i32 %39, i32 %40, i32 1, i32 %41, i32 0)
  ret void
}

declare dso_local i32 @set_speed(%struct.dce_i2c_hw*, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_N(i32, i32, i32, i32) #1

declare dso_local i32 @FN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
