; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_dpm_get_pp_table_entry_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_dpm_get_pp_table_entry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.smu10_power_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, i32, i8*)* @smu10_dpm_get_pp_table_entry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_dpm_get_pp_table_entry_callback(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.pp_hw_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smu10_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %6, align 8
  %11 = call %struct.smu10_power_state* @cast_smu10_ps(%struct.pp_hw_power_state* %10)
  store %struct.smu10_power_state* %11, %struct.smu10_power_state** %9, align 8
  %12 = load %struct.smu10_power_state*, %struct.smu10_power_state** %9, align 8
  %13 = getelementptr inbounds %struct.smu10_power_state, %struct.smu10_power_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.smu10_power_state*, %struct.smu10_power_state** %9, align 8
  %20 = getelementptr inbounds %struct.smu10_power_state, %struct.smu10_power_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  %28 = load %struct.smu10_power_state*, %struct.smu10_power_state** %9, align 8
  %29 = getelementptr inbounds %struct.smu10_power_state, %struct.smu10_power_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %35 = call i64 @phm_cap_enabled(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %4
  %38 = load %struct.smu10_power_state*, %struct.smu10_power_state** %9, align 8
  %39 = getelementptr inbounds %struct.smu10_power_state, %struct.smu10_power_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 5, i32* %44, align 8
  %45 = load %struct.smu10_power_state*, %struct.smu10_power_state** %9, align 8
  %46 = getelementptr inbounds %struct.smu10_power_state, %struct.smu10_power_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 5, i32* %51, align 4
  br label %52

52:                                               ; preds = %37, %4
  ret i32 0
}

declare dso_local %struct.smu10_power_state* @cast_smu10_ps(%struct.pp_hw_power_state*) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
