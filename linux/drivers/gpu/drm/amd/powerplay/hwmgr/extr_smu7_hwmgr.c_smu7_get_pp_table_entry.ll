; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_power_state = type { i32 }

@PP_TABLE_V0 = common dso_local global i64 0, align 8
@PP_TABLE_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.pp_power_state*)* @smu7_get_pp_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_pp_table_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pp_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %7, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PP_TABLE_V0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %17 = call i32 @smu7_get_pp_table_entry_v0(%struct.pp_hwmgr* %14, i64 %15, %struct.pp_power_state* %16)
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PP_TABLE_V1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %28 = call i32 @smu7_get_pp_table_entry_v1(%struct.pp_hwmgr* %25, i64 %26, %struct.pp_power_state* %27)
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %24, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @smu7_get_pp_table_entry_v0(%struct.pp_hwmgr*, i64, %struct.pp_power_state*) #1

declare dso_local i32 @smu7_get_pp_table_entry_v1(%struct.pp_hwmgr*, i64, %struct.pp_power_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
