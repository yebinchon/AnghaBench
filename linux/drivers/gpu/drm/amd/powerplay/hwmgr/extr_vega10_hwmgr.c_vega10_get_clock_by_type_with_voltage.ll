; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_clock_by_type_with_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_clock_by_type_with_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_voltage = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_7__*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, %struct.pp_clock_levels_with_voltage*)* @vega10_get_clock_by_type_with_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_get_clock_by_type_with_voltage(%struct.pp_hwmgr* %0, i32 %1, %struct.pp_clock_levels_with_voltage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_clock_levels_with_voltage*, align 8
  %8 = alloca %struct.phm_ppt_v2_information*, align 8
  %9 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %10 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_clock_levels_with_voltage* %2, %struct.pp_clock_levels_with_voltage** %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %14, %struct.phm_ppt_v2_information** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %36 [
    i32 130, label %16
    i32 132, label %20
    i32 131, label %24
    i32 128, label %28
    i32 129, label %32
  ]

16:                                               ; preds = %3
  %17 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %18 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %17, i32 0, i32 5
  %19 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %18, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %19, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %21, i32 0, i32 4
  %23 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %22, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %23, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %25, i32 0, i32 3
  %27 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %26, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %27, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %30 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %29, i32 0, i32 2
  %31 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %30, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %31, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %34 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %33, i32 0, i32 1
  %35 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %34, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %35, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %37

36:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %95

37:                                               ; preds = %32, %28, %24, %20, %16
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %41 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %46 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 10
  %53 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %54 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 8
  %59 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %60 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %65 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %75 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 %73, i64* %79, align 8
  %80 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %81 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %44
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %38

87:                                               ; preds = %38
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %90 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %93, %36
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
