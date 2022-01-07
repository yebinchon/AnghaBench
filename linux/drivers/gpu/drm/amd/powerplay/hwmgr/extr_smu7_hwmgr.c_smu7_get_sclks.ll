; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_sclks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_sclks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amd_pp_clocks = type { i32*, i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PP_TABLE_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.amd_pp_clocks*)* @smu7_get_sclks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_sclks(%struct.pp_hwmgr* %0, %struct.amd_pp_clocks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.amd_pp_clocks*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.amd_pp_clocks* %1, %struct.amd_pp_clocks** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %13, %struct.phm_ppt_v1_information** %6, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* null, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PP_TABLE_V1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %2
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %21 = icmp eq %struct.phm_ppt_v1_information* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %24 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %23, i32 0, i32 0
  %25 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %24, align 8
  %26 = icmp eq %struct.phm_ppt_v1_clock_voltage_dependency_table* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %22
  %31 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %31, i32 0, i32 0
  %33 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %32, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %33, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %56, %30
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %42 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 10
  %50 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %51 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %61 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %64 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %108

65:                                               ; preds = %2
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %67 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PP_TABLE_V0, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %74, align 8
  store %struct.phm_clock_voltage_dependency_table* %75, %struct.phm_clock_voltage_dependency_table** %8, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %98, %71
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %8, align 8
  %79 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %8, align 8
  %84 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 10
  %92 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %93 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %82
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %8, align 8
  %103 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %106 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %65
  br label %108

108:                                              ; preds = %107, %59
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %27
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
