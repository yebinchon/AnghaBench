; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_soc_index_for_max_uclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_soc_index_for_max_uclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }

@NUM_UCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_get_soc_index_for_max_uclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_get_soc_index_for_max_uclk(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %4 = alloca %struct.phm_ppt_v2_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %8, %struct.phm_ppt_v2_information** %4, align 8
  %9 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %10 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %9, i32 0, i32 0
  %11 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %10, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %11, %struct.phm_ppt_v1_clock_voltage_dependency_table** %3, align 8
  %12 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %3, align 8
  %13 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @NUM_UCLK_DPM_LEVELS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
