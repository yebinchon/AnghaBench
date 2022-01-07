; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_pp_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_pp_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_power_state = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vega10_power_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PhwVega10_Magic = common dso_local global i32 0, align 4
@vega10_get_pp_table_entry_callback_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.pp_power_state*)* @vega10_get_pp_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_get_pp_table_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vega10_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %9 = load i32, i32* @PhwVega10_Magic, align 4
  %10 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %11 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %14 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %13, i32 0, i32 2
  %15 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(%struct.TYPE_8__* %14)
  store %struct.vega10_power_state* %15, %struct.vega10_power_state** %8, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %19 = load i32, i32* @vega10_get_pp_table_entry_callback_func, align 4
  %20 = call i32 @vega10_get_powerplay_table_entry(%struct.pp_hwmgr* %16, i64 %17, %struct.pp_power_state* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %22 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %28 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %35 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %38 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %42 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.vega10_power_state* @cast_phw_vega10_power_state(%struct.TYPE_8__*) #1

declare dso_local i32 @vega10_get_powerplay_table_entry(%struct.pp_hwmgr*, i64, %struct.pp_power_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
