; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc_with_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc_with_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SMC_RESP_0 = common dso_local global i32 0, align 4
@SMC_RESP = common dso_local global i32 0, align 4
@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %8 = load i32, i32* @SMC_RESP_0, align 4
  %9 = load i32, i32* @SMC_RESP, align 4
  %10 = call i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cgs_write_register(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @smu7_send_msg_to_smc(%struct.pp_hwmgr* %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @smu7_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
