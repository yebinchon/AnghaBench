; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_get_pp_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_get_pp_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_power_state = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.smu8_power_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@smu8_magic = common dso_local global i32 0, align 4
@smu8_dpm_get_pp_table_entry_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.pp_power_state*)* @smu8_dpm_get_pp_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_dpm_get_pp_table_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu8_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %9 = load i32, i32* @smu8_magic, align 4
  %10 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %11 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %14 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %13, i32 0, i32 1
  %15 = call %struct.smu8_power_state* @cast_smu8_power_state(%struct.TYPE_6__* %14)
  store %struct.smu8_power_state* %15, %struct.smu8_power_state** %8, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %19 = load i32, i32* @smu8_dpm_get_pp_table_entry_callback, align 4
  %20 = call i32 @pp_tables_get_entry(%struct.pp_hwmgr* %16, i64 %17, %struct.pp_power_state* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %22 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smu8_power_state*, %struct.smu8_power_state** %8, align 8
  %26 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %29 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smu8_power_state*, %struct.smu8_power_state** %8, align 8
  %33 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.smu8_power_state* @cast_smu8_power_state(%struct.TYPE_6__*) #1

declare dso_local i32 @pp_tables_get_entry(%struct.pp_hwmgr*, i64, %struct.pp_power_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
