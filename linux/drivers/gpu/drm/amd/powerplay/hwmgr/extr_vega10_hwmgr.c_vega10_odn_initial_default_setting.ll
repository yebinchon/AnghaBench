; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_initial_default_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_initial_default_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_9__, i64, %struct.vega10_hwmgr* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.vega10_hwmgr = type { %struct.vega10_odn_dpm_table }
%struct.vega10_odn_dpm_table = type { i32, i32, i32, i32, i32, %struct.vega10_odn_vddc_lookup_table }
%struct.vega10_odn_vddc_lookup_table = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_voltage_lookup_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pp_atomfwctrl_avfs_parameters = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_odn_initial_default_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_odn_initial_default_setting(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v2_information*, align 8
  %5 = alloca %struct.vega10_odn_dpm_table*, align 8
  %6 = alloca %struct.vega10_odn_vddc_lookup_table*, align 8
  %7 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  %8 = alloca [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], align 16
  %9 = alloca [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], align 16
  %10 = alloca %struct.pp_atomfwctrl_avfs_parameters, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 2
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  store %struct.vega10_hwmgr* %15, %struct.vega10_hwmgr** %3, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %19, %struct.phm_ppt_v2_information** %4, align 8
  %20 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %20, i32 0, i32 0
  store %struct.vega10_odn_dpm_table* %21, %struct.vega10_odn_dpm_table** %5, align 8
  %22 = bitcast %struct.pp_atomfwctrl_avfs_parameters* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %24 = call i32 @pp_atomfwctrl_get_avfs_information(%struct.pp_hwmgr* %23, %struct.pp_atomfwctrl_avfs_parameters* %10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %40 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %39, i32 0, i32 5
  store %struct.vega10_odn_vddc_lookup_table* %40, %struct.vega10_odn_vddc_lookup_table** %6, align 8
  %41 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %42 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %41, i32 0, i32 3
  %43 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %42, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %43, %struct.phm_ppt_v1_voltage_lookup_table** %7, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %64, %38
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %7, align 8
  %47 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %7, align 8
  %52 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %6, align 8
  %59 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  br label %64

64:                                               ; preds = %50
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %7, align 8
  %69 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %6, align 8
  %72 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %74 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %73, i32 0, i32 2
  %75 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %74, align 8
  %76 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 0
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %75, %struct.phm_ppt_v1_clock_voltage_dependency_table** %76, align 16
  %77 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %78 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %77, i32 0, i32 1
  %79 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %78, align 8
  %80 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 1
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %79, %struct.phm_ppt_v1_clock_voltage_dependency_table** %80, align 8
  %81 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %82 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %81, i32 0, i32 0
  %83 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %82, align 8
  %84 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 2
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %83, %struct.phm_ppt_v1_clock_voltage_dependency_table** %84, align 16
  %85 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %86 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %85, i32 0, i32 4
  %87 = bitcast i32* %86 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  %88 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 0
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %87, %struct.phm_ppt_v1_clock_voltage_dependency_table** %88, align 16
  %89 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %90 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %89, i32 0, i32 3
  %91 = bitcast i32* %90 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  %92 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 1
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %91, %struct.phm_ppt_v1_clock_voltage_dependency_table** %92, align 8
  %93 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %94 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %93, i32 0, i32 2
  %95 = bitcast i32* %94 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  %96 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %95, %struct.phm_ppt_v1_clock_voltage_dependency_table** %96, align 16
  store i64 0, i64* %11, align 8
  br label %97

97:                                               ; preds = %108, %67
  %98 = load i64, i64* %11, align 8
  %99 = icmp ult i64 %98, 3
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 %101
  %103 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 %104
  %106 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %105, align 8
  %107 = call i32 @smu_get_voltage_dependency_table_ppt_v1(%struct.phm_ppt_v1_clock_voltage_dependency_table* %103, %struct.phm_ppt_v1_clock_voltage_dependency_table* %106)
  br label %108

108:                                              ; preds = %100
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %97

111:                                              ; preds = %97
  %112 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %113 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %118 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 2000
  br i1 %120, label %121, label %137

121:                                              ; preds = %116, %111
  %122 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 0
  %123 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %122, align 16
  %124 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 0
  %127 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %126, align 16
  %128 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %136 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %121, %116
  %138 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %139 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %144 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 2000
  br i1 %146, label %147, label %157

147:                                              ; preds = %142, %137
  %148 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %8, i64 0, i64 0
  %149 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %148, align 16
  %150 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %156 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %147, %142
  %158 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %159 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %158, align 16
  %160 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %11, align 8
  %164 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %165 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %170 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %169, align 16
  %171 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %168, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %157
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %180 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  br label %193

184:                                              ; preds = %157
  %185 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %186 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %185, align 16
  %187 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  br label %193

193:                                              ; preds = %184, %178
  %194 = phi i64 [ %183, %178 ], [ %192, %184 ]
  %195 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %196 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %195, align 16
  %197 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  store i64 %194, i64* %201, align 8
  %202 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %203 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %206 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %205, align 16
  %207 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = load i64, i64* %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sgt i32 %204, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %193
  %215 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %5, align 8
  %216 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  br label %227

218:                                              ; preds = %193
  %219 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %220 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %219, align 16
  %221 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load i64, i64* %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  br label %227

227:                                              ; preds = %218, %214
  %228 = phi i32 [ %217, %214 ], [ %226, %218 ]
  %229 = getelementptr inbounds [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*], [3 x %struct.phm_ppt_v1_clock_voltage_dependency_table*]* %9, i64 0, i64 2
  %230 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %229, align 16
  %231 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load i64, i64* %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i32 %228, i32* %235, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pp_atomfwctrl_get_avfs_information(%struct.pp_hwmgr*, %struct.pp_atomfwctrl_avfs_parameters*) #2

declare dso_local i32 @smu_get_voltage_dependency_table_ppt_v1(%struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
