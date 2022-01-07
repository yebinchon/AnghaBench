; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_get_pp_table_entry_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_get_pp_table_entry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.smu8_power_state = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, i32, i8*)* @smu8_dpm_get_pp_table_entry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_dpm_get_pp_table_entry_callback(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.pp_hw_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smu8_power_state*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %12 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %6, align 8
  %14 = call %struct.smu8_power_state* @cast_smu8_power_state(%struct.pp_hw_power_state* %13)
  store %struct.smu8_power_state* %14, %struct.smu8_power_state** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %10, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %19, align 8
  store %struct.phm_clock_voltage_dependency_table* %20, %struct.phm_clock_voltage_dependency_table** %11, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %24, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %32, %4
  %40 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %11, align 8
  %41 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %48 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store i32 %46, i32* %53, align 8
  %54 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %11, align 8
  %55 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %62 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %60, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  %70 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %71 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %77 = call i64 @phm_cap_enabled(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %39
  %80 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %81 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 5, i32* %86, align 8
  %87 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %88 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 5, i32* %93, align 4
  br label %94

94:                                               ; preds = %79, %39
  ret i32 0
}

declare dso_local %struct.smu8_power_state* @cast_smu8_power_state(%struct.pp_hw_power_state*) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
