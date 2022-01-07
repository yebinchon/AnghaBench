; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_thermal_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_thermal_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, %struct.amdgpu_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@THM = common dso_local global i32 0, align 4
@mmCG_TACH_CTRL = common dso_local global i32 0, align 4
@CG_TACH_CTRL = common dso_local global i32 0, align 4
@EDGE_PER_REV = common dso_local global i32 0, align 4
@mmCG_FDO_CTRL2 = common dso_local global i32 0, align 4
@CG_FDO_CTRL2 = common dso_local global i32 0, align 4
@TACH_PWM_RESP_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_thermal_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_thermal_initialize(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @THM, align 4
  %15 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %16 = load i32, i32* @THM, align 4
  %17 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %18 = call i32 @RREG32_SOC15(i32 %16, i32 0, i32 %17)
  %19 = load i32, i32* @CG_TACH_CTRL, align 4
  %20 = load i32, i32* @EDGE_PER_REV, align 4
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20, i32 %26)
  %28 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 %27)
  br label %29

29:                                               ; preds = %13, %1
  %30 = load i32, i32* @THM, align 4
  %31 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %32 = load i32, i32* @THM, align 4
  %33 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %34 = call i32 @RREG32_SOC15(i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* @CG_FDO_CTRL2, align 4
  %36 = load i32, i32* @TACH_PWM_RESP_RATE, align 4
  %37 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36, i32 40)
  %38 = call i32 @WREG32_SOC15(i32 %30, i32 0, i32 %31, i32 %37)
  ret i32 0
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
