; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_smu_start_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_smu_start_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SMC_IND = common dso_local global i32 0, align 4
@FIRMWARE_FLAGS = common dso_local global i32 0, align 4
@INTERRUPTS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_smu_start_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_smu_start_smc(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = call i32 @smu7_program_jump_on_start(%struct.pp_hwmgr* %3)
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = call i32 @iceland_start_smc_clock(%struct.pp_hwmgr* %5)
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = call i32 @iceland_start_smc(%struct.pp_hwmgr* %7)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = load i32, i32* @SMC_IND, align 4
  %11 = load i32, i32* @FIRMWARE_FLAGS, align 4
  %12 = load i32, i32* @INTERRUPTS_ENABLED, align 4
  %13 = call i32 @PHM_WAIT_INDIRECT_FIELD(%struct.pp_hwmgr* %9, i32 %10, i32 %11, i32 %12, i32 1)
  ret i32 0
}

declare dso_local i32 @smu7_program_jump_on_start(%struct.pp_hwmgr*) #1

declare dso_local i32 @iceland_start_smc_clock(%struct.pp_hwmgr*) #1

declare dso_local i32 @iceland_start_smc(%struct.pp_hwmgr*) #1

declare dso_local i32 @PHM_WAIT_INDIRECT_FIELD(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
