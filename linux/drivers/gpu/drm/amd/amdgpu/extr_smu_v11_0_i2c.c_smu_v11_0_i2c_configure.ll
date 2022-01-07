; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@CKSVII2C_IC_CON = common dso_local global i32 0, align 4
@IC_SLAVE_DISABLE = common dso_local global i32 0, align 4
@IC_RESTART_EN = common dso_local global i32 0, align 4
@IC_10BITADDR_MASTER = common dso_local global i32 0, align 4
@IC_10BITADDR_SLAVE = common dso_local global i32 0, align 4
@IC_MAX_SPEED_MODE = common dso_local global i32 0, align 4
@IC_MASTER_MODE = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @smu_v11_0_i2c_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_v11_0_i2c_configure(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %5)
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %9 = load i32, i32* @IC_SLAVE_DISABLE, align 4
  %10 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %13 = load i32, i32* @IC_RESTART_EN, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %17 = load i32, i32* @IC_10BITADDR_MASTER, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %21 = load i32, i32* @IC_10BITADDR_SLAVE, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %25 = load i32, i32* @IC_MAX_SPEED_MODE, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 2)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CKSVII2C_IC_CON, align 4
  %29 = load i32, i32* @IC_MASTER_MODE, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @SMUIO, align 4
  %32 = load i32, i32* @mmCKSVII2C_IC_CON, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @WREG32_SOC15(i32 %31, i32 0, i32 %32, i32 %33)
  ret void
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
