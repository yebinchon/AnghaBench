; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_check_fw_load_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_check_fw_load_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_smumgr = type { i64 }

@mmSMC_IND_INDEX_11 = common dso_local global i32 0, align 4
@SMU_SoftRegisters = common dso_local global i32 0, align 4
@UcodeLoadStatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_check_fw_load_finish(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu7_smumgr*, align 8
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %10, %struct.smu7_smumgr** %5, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = load i32, i32* @mmSMC_IND_INDEX_11, align 4
  %13 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %5, align 8
  %14 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = load i32, i32* @SMU_SoftRegisters, align 4
  %18 = load i32, i32* @UcodeLoadStatus, align 4
  %19 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %16, i32 %17, i32 %18)
  %20 = add nsw i64 %15, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @phm_wait_on_indirect_register(%struct.pp_hwmgr* %11, i32 %12, i64 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @phm_wait_on_indirect_register(%struct.pp_hwmgr*, i32, i64, i32, i32) #1

declare dso_local i64 @smum_get_offsetof(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
