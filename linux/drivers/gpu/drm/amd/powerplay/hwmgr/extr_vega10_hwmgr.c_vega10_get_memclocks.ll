; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_memclocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_memclocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr*, i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pp_clock_levels_with_latency = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.pp_clock_levels_with_latency*)* @vega10_get_memclocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_get_memclocks(%struct.pp_hwmgr* %0, %struct.pp_clock_levels_with_latency* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.vega10_hwmgr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.pp_clock_levels_with_latency* %1, %struct.pp_clock_levels_with_latency** %4, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %13, %struct.phm_ppt_v2_information** %5, align 8
  %14 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %14, i32 0, i32 0
  %16 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %15, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %16, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  store %struct.vega10_hwmgr* %19, %struct.vega10_hwmgr** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %80, %2
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %23 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %28 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %26
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 10
  %44 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %45 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %51 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %58 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  %64 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %65 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 25, i32* %70, align 4
  %71 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %72 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 25, i32* %76, align 4
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %35, %26
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %20

83:                                               ; preds = %20
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %86 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %89 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %88, i32 0, i32 0
  store i64 %84, i64* %89, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
