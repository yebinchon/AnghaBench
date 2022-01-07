; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_clock_voltage_limits_with_vddc_leakage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_clock_voltage_limits_with_vddc_leakage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smu7_leakage_voltage = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.smu7_leakage_voltage*, i32*)* @smu7_patch_clock_voltage_limits_with_vddc_leakage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_clock_voltage_limits_with_vddc_leakage(%struct.pp_hwmgr* %0, %struct.smu7_leakage_voltage* %1, i32* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.smu7_leakage_voltage*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.smu7_leakage_voltage* %1, %struct.smu7_leakage_voltage** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %11, %struct.phm_ppt_v1_information** %7, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.smu7_leakage_voltage*, %struct.smu7_leakage_voltage** %5, align 8
  %15 = call i32 @smu7_patch_ppt_v1_with_vdd_leakage(%struct.pp_hwmgr* %12, i32* %13, %struct.smu7_leakage_voltage* %14)
  %16 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %7, align 8
  %17 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  ret i32 0
}

declare dso_local i32 @smu7_patch_ppt_v1_with_vdd_leakage(%struct.pp_hwmgr*, i32*, %struct.smu7_leakage_voltage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
