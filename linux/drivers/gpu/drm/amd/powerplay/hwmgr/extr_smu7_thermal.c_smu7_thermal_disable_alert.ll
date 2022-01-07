; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_disable_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_disable_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_THERMAL_INT = common dso_local global i32 0, align 4
@THERM_INT_MASK = common dso_local global i32 0, align 4
@SMU7_THERMAL_HIGH_ALERT_MASK = common dso_local global i32 0, align 4
@SMU7_THERMAL_LOW_ALERT_MASK = common dso_local global i32 0, align 4
@PPSMC_MSG_Thermal_Cntl_Disable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_thermal_disable_alert(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %8 = load i32, i32* @CG_THERMAL_INT, align 4
  %9 = load i32, i32* @THERM_INT_MASK, align 4
  %10 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SMU7_THERMAL_HIGH_ALERT_MASK, align 4
  %12 = load i32, i32* @SMU7_THERMAL_LOW_ALERT_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %20 = load i32, i32* @CG_THERMAL_INT, align 4
  %21 = load i32, i32* @THERM_INT_MASK, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %25 = load i32, i32* @PPSMC_MSG_Thermal_Cntl_Disable, align 4
  %26 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
