; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dcn1_i2c_hw_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dcn1_i2c_hw_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce_i2c_registers = type { i32 }
%struct.dce_i2c_shift = type { i32 }
%struct.dce_i2c_mask = type { i32 }

@I2C_SETUP_TIME_LIMIT_DCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn1_i2c_hw_construct(%struct.dce_i2c_hw* %0, %struct.dc_context* %1, i32 %2, %struct.dce_i2c_registers* %3, %struct.dce_i2c_shift* %4, %struct.dce_i2c_mask* %5) #0 {
  %7 = alloca %struct.dce_i2c_hw*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce_i2c_registers*, align 8
  %11 = alloca %struct.dce_i2c_shift*, align 8
  %12 = alloca %struct.dce_i2c_mask*, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dce_i2c_registers* %3, %struct.dce_i2c_registers** %10, align 8
  store %struct.dce_i2c_shift* %4, %struct.dce_i2c_shift** %11, align 8
  store %struct.dce_i2c_mask* %5, %struct.dce_i2c_mask** %12, align 8
  %13 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.dce_i2c_registers*, %struct.dce_i2c_registers** %10, align 8
  %17 = load %struct.dce_i2c_shift*, %struct.dce_i2c_shift** %11, align 8
  %18 = load %struct.dce_i2c_mask*, %struct.dce_i2c_mask** %12, align 8
  %19 = call i32 @dce112_i2c_hw_construct(%struct.dce_i2c_hw* %13, %struct.dc_context* %14, i32 %15, %struct.dce_i2c_registers* %16, %struct.dce_i2c_shift* %17, %struct.dce_i2c_mask* %18)
  %20 = load i32, i32* @I2C_SETUP_TIME_LIMIT_DCN, align 4
  %21 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %22 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @dce112_i2c_hw_construct(%struct.dce_i2c_hw*, %struct.dc_context*, i32, %struct.dce_i2c_registers*, %struct.dce_i2c_shift*, %struct.dce_i2c_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
