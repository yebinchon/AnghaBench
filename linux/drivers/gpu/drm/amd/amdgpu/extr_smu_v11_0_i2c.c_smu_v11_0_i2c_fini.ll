; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_ENABLE_STATUS = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_ENABLE = common dso_local global i32 0, align 4
@CKSVII2C_IC_ENABLE = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@CKSVII2C_IC_ENABLE_STATUS = common dso_local global i32 0, align 4
@IC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @smu_v11_0_i2c_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_v11_0_i2c_fini(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %7 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %6)
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %9 = call i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter* %8, i32 0)
  %10 = load i32, i32* @SMUIO, align 4
  %11 = load i32, i32* @mmCKSVII2C_IC_ENABLE_STATUS, align 4
  %12 = call i32 @RREG32_SOC15(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @SMUIO, align 4
  %14 = load i32, i32* @mmCKSVII2C_IC_ENABLE, align 4
  %15 = call i32 @RREG32_SOC15(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CKSVII2C_IC_ENABLE, align 4
  %18 = load i32, i32* @ENABLE, align 4
  %19 = call i32 @REG_GET_FIELD(i32 %16, i32 %17, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CKSVII2C_IC_ENABLE_STATUS, align 4
  %24 = load i32, i32* @IC_EN, align 4
  %25 = call i32 @REG_GET_FIELD(i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %29 = call i32 @smu_v11_0_i2c_abort(%struct.i2c_adapter* %28)
  br label %30

30:                                               ; preds = %27, %21, %1
  ret void
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_abort(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
