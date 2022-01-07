; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_update_soc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_update_soc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.phm_ppt_v2_information*, %struct.vega10_hwmgr* }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.vega10_hwmgr = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_clock_voltage_dependency_table }
%struct.vega10_odn_vddc_lookup_table = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.vega10_odn_clock_voltage_dependency_table = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.vega10_single_dpm_table }

@PP_OD_EDIT_SCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@PP_OD_EDIT_MCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_VDDC = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_SOCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @vega10_odn_update_soc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_odn_update_soc_table(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vega10_hwmgr*, align 8
  %6 = alloca %struct.phm_ppt_v2_information*, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca %struct.vega10_single_dpm_table*, align 8
  %9 = alloca %struct.vega10_odn_clock_voltage_dependency_table*, align 8
  %10 = alloca %struct.vega10_odn_vddc_lookup_table*, align 8
  %11 = alloca %struct.vega10_odn_clock_voltage_dependency_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 1
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %15, align 8
  store %struct.vega10_hwmgr* %16, %struct.vega10_hwmgr** %5, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %18, align 8
  store %struct.phm_ppt_v2_information* %19, %struct.phm_ppt_v2_information** %6, align 8
  %20 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %20, i32 0, i32 0
  %22 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %21, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %22, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %23 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %24 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %25, %struct.vega10_single_dpm_table** %8, align 8
  %26 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %27 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store %struct.vega10_odn_clock_voltage_dependency_table* %28, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %29 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %30 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store %struct.vega10_odn_vddc_lookup_table* %31, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PP_OD_EDIT_SCLK_VDDC_TABLE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %2
  %36 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %37 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store %struct.vega10_odn_clock_voltage_dependency_table* %38, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %59, %35
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %42 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %47 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %54 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i64 %52, i64* %58, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %39

62:                                               ; preds = %39
  br label %432

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PP_OD_EDIT_MCLK_VDDC_TABLE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %431

67:                                               ; preds = %63
  %68 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %69 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store %struct.vega10_odn_clock_voltage_dependency_table* %70, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  store i64 0, i64* %12, align 8
  br label %71

71:                                               ; preds = %142, %67
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %74 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %145

77:                                               ; preds = %71
  store i64 0, i64* %13, align 8
  br label %78

78:                                               ; preds = %102, %77
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %81 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %86 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %93 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %91, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %105

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %78

105:                                              ; preds = %100, %78
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %108 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %113 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  store i64 %115, i64* %13, align 8
  %116 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %117 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.vega10_odn_vddc_lookup_table*, %struct.vega10_odn_vddc_lookup_table** %10, align 8
  %124 = getelementptr inbounds %struct.vega10_odn_vddc_lookup_table, %struct.vega10_odn_vddc_lookup_table* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i64 %122, i64* %128, align 8
  %129 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %130 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %131 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %111, %105
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %137 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  store i64 %135, i64* %141, align 8
  br label %142

142:                                              ; preds = %134
  %143 = load i64, i64* %12, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %12, align 8
  br label %71

145:                                              ; preds = %71
  %146 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %147 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %148, %struct.vega10_single_dpm_table** %8, align 8
  store i64 0, i64* %12, align 8
  br label %149

149:                                              ; preds = %314, %145
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %152 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %317

155:                                              ; preds = %149
  %156 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %157 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %164 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %167 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %162, %172
  br i1 %173, label %174, label %260

174:                                              ; preds = %155
  %175 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %176 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %183 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %186 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %187, 1
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %181, %191
  br i1 %192, label %193, label %260

193:                                              ; preds = %174
  %194 = load i32, i32* @DPMTABLE_UPDATE_SOCCLK, align 4
  %195 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %196 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %256, %193
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %202 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ult i64 %200, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %199
  %206 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %207 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %206, i32 0, i32 1
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i64, i64* %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %214 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %213, i32 0, i32 1
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %217 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sub i64 %218, 1
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %212, %222
  br label %224

224:                                              ; preds = %205, %199
  %225 = phi i1 [ false, %199 ], [ %223, %205 ]
  br i1 %225, label %226, label %259

226:                                              ; preds = %224
  %227 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %228 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %227, i32 0, i32 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %231 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = sub i64 %232, 1
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %238 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %237, i32 0, i32 1
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %238, align 8
  %240 = load i64, i64* %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i64 %236, i64* %242, align 8
  %243 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %244 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %243, i32 0, i32 1
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = load i64, i64* %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %251 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %250, i32 0, i32 1
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load i64, i64* %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  store i64 %249, i64* %255, align 8
  br label %256

256:                                              ; preds = %226
  %257 = load i64, i64* %12, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %12, align 8
  br label %199

259:                                              ; preds = %224
  br label %317

260:                                              ; preds = %174, %155
  %261 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %262 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %261, i32 0, i32 1
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = load i64, i64* %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %269 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %268, i32 0, i32 1
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i64, i64* %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  store i64 %267, i64* %273, align 8
  %274 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %275 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %274, i32 0, i32 1
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = load i64, i64* %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %282 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %281, i32 0, i32 1
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = load i64, i64* %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  store i64 %280, i64* %286, align 8
  %287 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %288 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %287, i32 0, i32 1
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = load i64, i64* %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %295 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %294, i32 0, i32 1
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %295, align 8
  %297 = load i64, i64* %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  store i64 %293, i64* %299, align 8
  %300 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %301 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %300, i32 0, i32 1
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = load i64, i64* %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %308 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %307, i32 0, i32 1
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = load i64, i64* %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  store i64 %306, i64* %312, align 8
  br label %313

313:                                              ; preds = %260
  br label %314

314:                                              ; preds = %313
  %315 = load i64, i64* %12, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %12, align 8
  br label %149

317:                                              ; preds = %259, %149
  %318 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %319 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %318, i32 0, i32 1
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %319, align 8
  %321 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %322 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = sub i64 %323, 1
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %329 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %328, i32 0, i32 1
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %329, align 8
  %331 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %332 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = sub i64 %333, 1
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = icmp slt i64 %327, %337
  br i1 %338, label %339, label %383

339:                                              ; preds = %317
  %340 = load i32, i32* @DPMTABLE_UPDATE_SOCCLK, align 4
  %341 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %342 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %346 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %345, i32 0, i32 1
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %349 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = sub i64 %350, 1
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %356 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %355, i32 0, i32 1
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %359 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = sub i64 %360, 1
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 2
  store i64 %354, i64* %363, align 8
  %364 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %365 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %364, i32 0, i32 1
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %365, align 8
  %367 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %368 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = sub i64 %369, 1
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %375 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %374, i32 0, i32 1
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %375, align 8
  %377 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %378 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = sub i64 %379, 1
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  store i64 %373, i64* %382, align 8
  br label %383

383:                                              ; preds = %339, %317
  %384 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %385 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %384, i32 0, i32 1
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %385, align 8
  %387 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %388 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = sub i64 %389, 1
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %395 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %394, i32 0, i32 1
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %395, align 8
  %397 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %398 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = sub i64 %399, 1
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp ult i64 %393, %403
  br i1 %404, label %405, label %430

405:                                              ; preds = %383
  %406 = load i32, i32* @DPMTABLE_UPDATE_SOCCLK, align 4
  %407 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %408 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 8
  %411 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %412 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %411, i32 0, i32 1
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %412, align 8
  %414 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %11, align 8
  %415 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = sub i64 %416, 1
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %422 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %421, i32 0, i32 1
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %422, align 8
  %424 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %9, align 8
  %425 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = sub i64 %426, 1
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 1
  store i64 %420, i64* %429, align 8
  br label %430

430:                                              ; preds = %405, %383
  br label %431

431:                                              ; preds = %430, %63
  br label %432

432:                                              ; preds = %431, %62
  %433 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %434 = call i32 @vega10_odn_update_power_state(%struct.pp_hwmgr* %433)
  ret void
}

declare dso_local i32 @vega10_odn_update_power_state(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
