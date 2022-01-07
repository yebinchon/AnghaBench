; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_setup_default_single_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_setup_default_single_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.vega10_single_dpm_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.vega10_single_dpm_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*)* @vega10_setup_default_single_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_setup_default_single_dpm_table(%struct.pp_hwmgr* %0, %struct.vega10_single_dpm_table* %1, %struct.phm_ppt_v1_clock_voltage_dependency_table* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.vega10_single_dpm_table*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.vega10_single_dpm_table* %1, %struct.vega10_single_dpm_table** %5, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %2, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %8 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %9 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %72, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %13 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %21 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %24 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %30, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %19, %16
  %41 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %42 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %50 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %53 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %48, i64* %57, align 8
  %58 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %59 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %62 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %5, align 8
  %68 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %40, %19
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %10

75:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
