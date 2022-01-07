; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_construct_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_construct_toc(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  store %struct.smu8_smumgr* %6, %struct.smu8_smumgr** %3, align 8
  %7 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %8 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = call i32 @smu8_smu_initialize_toc_empty_job_list(%struct.pp_hwmgr* %9)
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = call i32 @smu8_smu_construct_toc_for_rlc_aram_save(%struct.pp_hwmgr* %11)
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = call i32 @smu8_smu_construct_toc_for_vddgfx_enter(%struct.pp_hwmgr* %13)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = call i32 @smu8_smu_construct_toc_for_vddgfx_exit(%struct.pp_hwmgr* %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = call i32 @smu8_smu_construct_toc_for_power_profiling(%struct.pp_hwmgr* %17)
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = call i32 @smu8_smu_construct_toc_for_bootup(%struct.pp_hwmgr* %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = call i32 @smu8_smu_construct_toc_for_clock_table(%struct.pp_hwmgr* %21)
  ret i32 0
}

declare dso_local i32 @smu8_smu_initialize_toc_empty_job_list(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_rlc_aram_save(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_vddgfx_enter(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_vddgfx_exit(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_power_profiling(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_bootup(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_smu_construct_toc_for_clock_table(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
