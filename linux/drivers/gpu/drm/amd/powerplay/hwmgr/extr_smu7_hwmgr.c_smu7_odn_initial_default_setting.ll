; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_odn_initial_default_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_odn_initial_default_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_15__, %struct.smu7_odn_dpm_table }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.smu7_odn_dpm_table = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, %struct.phm_odn_performance_level* }
%struct.phm_odn_performance_level = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.phm_odn_performance_level* }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_odn_initial_default_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_odn_initial_default_setting(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.smu7_odn_dpm_table*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %9 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %10 = alloca %struct.phm_odn_performance_level*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %14, %struct.smu7_hwmgr** %4, align 8
  %15 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %15, i32 0, i32 1
  store %struct.smu7_odn_dpm_table* %16, %struct.smu7_odn_dpm_table** %5, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %20, %struct.phm_ppt_v1_information** %6, align 8
  %21 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %22 = icmp eq %struct.phm_ppt_v1_information* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %149

26:                                               ; preds = %1
  %27 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %28 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %27, i32 0, i32 1
  %29 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %28, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %29, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %30 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %31 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %30, i32 0, i32 0
  %32 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %31, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %32, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %33 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %34 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %39 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %42 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %43, align 8
  store %struct.phm_odn_performance_level* %44, %struct.phm_odn_performance_level** %10, align 8
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %82, %26
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %48 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %45
  %54 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %55 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %63, i64 %64
  %66 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %67, i64 %68
  %70 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %72 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %78, i64 %79
  %81 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %53
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %45

85:                                               ; preds = %45
  %86 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %87 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %88 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %87, i32 0, i32 2
  %89 = bitcast i32* %88 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  %90 = call i32 @smu_get_voltage_dependency_table_ppt_v1(%struct.phm_ppt_v1_clock_voltage_dependency_table* %86, %struct.phm_ppt_v1_clock_voltage_dependency_table* %89)
  %91 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %92 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %97 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %100 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %101, align 8
  store %struct.phm_odn_performance_level* %102, %struct.phm_odn_performance_level** %10, align 8
  store i64 0, i64* %7, align 8
  br label %103

103:                                              ; preds = %140, %85
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %106 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %104, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %103
  %112 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %113 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %121, i64 %122
  %124 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 4
  %125 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %125, i64 %126
  %128 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %130 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.phm_odn_performance_level*, %struct.phm_odn_performance_level** %10, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %136, i64 %137
  %139 = getelementptr inbounds %struct.phm_odn_performance_level, %struct.phm_odn_performance_level* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %111
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %7, align 8
  br label %103

143:                                              ; preds = %103
  %144 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %145 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %5, align 8
  %146 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %145, i32 0, i32 0
  %147 = bitcast i32* %146 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  %148 = call i32 @smu_get_voltage_dependency_table_ppt_v1(%struct.phm_ppt_v1_clock_voltage_dependency_table* %144, %struct.phm_ppt_v1_clock_voltage_dependency_table* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %23
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @smu_get_voltage_dependency_table_ppt_v1(%struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
