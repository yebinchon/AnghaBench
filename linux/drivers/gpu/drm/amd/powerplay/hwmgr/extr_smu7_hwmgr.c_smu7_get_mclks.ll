; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_mclks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_mclks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amd_pp_clocks = type { i32*, i32, i32* }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PP_TABLE_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.amd_pp_clocks*)* @smu7_get_mclks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_mclks(%struct.pp_hwmgr* %0, %struct.amd_pp_clocks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.amd_pp_clocks*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.amd_pp_clocks* %1, %struct.amd_pp_clocks** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %13, %struct.phm_ppt_v1_information** %6, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PP_TABLE_V1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %2
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %21 = icmp eq %struct.phm_ppt_v1_information* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %120

25:                                               ; preds = %19
  %26 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %27 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %26, i32 0, i32 0
  %28 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %27, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %28, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %67, %25
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 10
  %45 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %46 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %52 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %53 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @smu7_get_mem_latency(%struct.pp_hwmgr* %51, i32 %59)
  %61 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %62 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %35
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %72 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %75 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %119

76:                                               ; preds = %2
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PP_TABLE_V0, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %76
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %85, align 8
  store %struct.phm_clock_voltage_dependency_table* %86, %struct.phm_clock_voltage_dependency_table** %9, align 8
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %109, %82
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %9, align 8
  %90 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %9, align 8
  %95 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 10
  %103 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %104 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %93
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %9, align 8
  %114 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %5, align 8
  %117 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %112, %76
  br label %119

119:                                              ; preds = %118, %70
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %22
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @smu7_get_mem_latency(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
