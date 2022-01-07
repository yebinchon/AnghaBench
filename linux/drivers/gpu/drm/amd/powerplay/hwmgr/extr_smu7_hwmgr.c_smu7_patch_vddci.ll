; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_vddci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_vddci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smu7_hwmgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_clock_voltage_dependency_table*)* @smu7_patch_vddci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_vddci(%struct.pp_hwmgr* %0, %struct.phm_clock_voltage_dependency_table* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.phm_clock_voltage_dependency_table* %1, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %10, %struct.smu7_hwmgr** %6, align 8
  %11 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %12 = icmp ne %struct.phm_clock_voltage_dependency_table* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %17 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %23 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %29 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %28, i32 0, i32 0
  %30 = call i32 @smu7_patch_ppt_v0_with_vdd_leakage(%struct.pp_hwmgr* %21, i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %14

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %2
  ret i32 0
}

declare dso_local i32 @smu7_patch_ppt_v0_with_vdd_leakage(%struct.pp_hwmgr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
