; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP1 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_90 = common dso_local global i32 0, align 4
@MP1_C2PMSG_90__CONTENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_wait_for_response(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @MP1, align 4
  %9 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %10 = call i32 @SOC15_REG_OFFSET(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MP1_C2PMSG_90__CONTENT_MASK, align 4
  %14 = call i32 @phm_wait_for_register_unequal(%struct.pp_hwmgr* %11, i32 %12, i32 0, i32 %13)
  %15 = load i32, i32* @MP1, align 4
  %16 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %17 = call i32 @RREG32_SOC15(i32 %15, i32 0, i32 %16)
  ret i32 %17
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @phm_wait_for_register_unequal(%struct.pp_hwmgr*, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
