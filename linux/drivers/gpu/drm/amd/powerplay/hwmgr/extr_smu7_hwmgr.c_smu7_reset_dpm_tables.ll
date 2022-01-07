; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_reset_dpm_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_reset_dpm_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SMU_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@MAX_REGULAR_DPM_NUMBER = common dso_local global i32 0, align 4
@SMU_MAX_LEVELS_MEMORY = common dso_local global i32 0, align 4
@SMU_MAX_LEVELS_VDDC = common dso_local global i32 0, align 4
@SMU_MAX_LEVELS_VDDCI = common dso_local global i32 0, align 4
@SMU_MAX_LEVELS_MVDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_reset_dpm_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_reset_dpm_tables(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %8, i32 0, i32 0
  %10 = call i32 @memset(%struct.TYPE_2__* %9, i32 0, i32 20)
  %11 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = load i32, i32* @SMU_MAX_LEVELS_GRAPHICS, align 4
  %16 = call i32 @smum_get_mac_definition(%struct.pp_hwmgr* %14, i32 %15)
  %17 = load i32, i32* @MAX_REGULAR_DPM_NUMBER, align 4
  %18 = call i32 @phm_reset_single_dpm_table(i32* %13, i32 %16, i32 %17)
  %19 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = load i32, i32* @SMU_MAX_LEVELS_MEMORY, align 4
  %24 = call i32 @smum_get_mac_definition(%struct.pp_hwmgr* %22, i32 %23)
  %25 = load i32, i32* @MAX_REGULAR_DPM_NUMBER, align 4
  %26 = call i32 @phm_reset_single_dpm_table(i32* %21, i32 %24, i32 %25)
  %27 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %31 = load i32, i32* @SMU_MAX_LEVELS_VDDC, align 4
  %32 = call i32 @smum_get_mac_definition(%struct.pp_hwmgr* %30, i32 %31)
  %33 = load i32, i32* @MAX_REGULAR_DPM_NUMBER, align 4
  %34 = call i32 @phm_reset_single_dpm_table(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = load i32, i32* @SMU_MAX_LEVELS_VDDCI, align 4
  %40 = call i32 @smum_get_mac_definition(%struct.pp_hwmgr* %38, i32 %39)
  %41 = load i32, i32* @MAX_REGULAR_DPM_NUMBER, align 4
  %42 = call i32 @phm_reset_single_dpm_table(i32* %37, i32 %40, i32 %41)
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %47 = load i32, i32* @SMU_MAX_LEVELS_MVDD, align 4
  %48 = call i32 @smum_get_mac_definition(%struct.pp_hwmgr* %46, i32 %47)
  %49 = load i32, i32* @MAX_REGULAR_DPM_NUMBER, align 4
  %50 = call i32 @phm_reset_single_dpm_table(i32* %45, i32 %48, i32 %49)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @phm_reset_single_dpm_table(i32*, i32, i32) #1

declare dso_local i32 @smum_get_mac_definition(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
