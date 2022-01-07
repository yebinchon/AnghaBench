; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.pp_power_state = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.smu7_power_state = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.smu7_hwmgr = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, i32, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }

@PHM_VIslands_Magic = common dso_local global i32 0, align 4
@smu7_get_pp_table_entry_callback_func_v1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Single MCLK entry VDDCI/MCLK dependency table does not match VBIOS boot MCLK level\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Single VDDCI entry VDDCI/MCLK dependency table does not match VBIOS boot VDDCI level\00", align 1
@PP_StateClassificationFlag_ACPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.pp_power_state*)* @smu7_get_pp_table_entry_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_pp_table_entry_v1(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu7_power_state*, align 8
  %9 = alloca %struct.smu7_hwmgr*, align 8
  %10 = alloca %struct.phm_ppt_v1_information*, align 8
  %11 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %12 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %16, %struct.smu7_hwmgr** %9, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %20, %struct.phm_ppt_v1_information** %10, align 8
  %21 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %10, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %21, i32 0, i32 0
  %23 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %22, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %23, %struct.phm_ppt_v1_clock_voltage_dependency_table** %11, align 8
  %24 = load i32, i32* @PHM_VIslands_Magic, align 4
  %25 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %26 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %29 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %28, i32 0, i32 3
  %30 = bitcast %struct.TYPE_16__* %29 to %struct.smu7_power_state*
  store %struct.smu7_power_state* %30, %struct.smu7_power_state** %8, align 8
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %34 = load i32, i32* @smu7_get_pp_table_entry_callback_func_v1, align 4
  %35 = call i32 @get_powerplay_table_entry_v1_0(%struct.pp_hwmgr* %31, i64 %32, %struct.pp_power_state* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %11, align 8
  %37 = icmp ne %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %3
  %39 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %11, align 8
  %40 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %11, align 8
  %45 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %43
  %58 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %11, align 8
  %59 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %65 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %57
  br label %72

72:                                               ; preds = %71, %38, %3
  %73 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %74 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %80 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %83 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PP_StateClassificationFlag_ACPI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %91 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %90, i32 0, i32 2
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %97 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %89, %81
  %99 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %100 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %104 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %107 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %111 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %342, label %115

115:                                              ; preds = %98
  %116 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %117 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %340 [
    i32 128, label %120
    i32 129, label %230
  ]

120:                                              ; preds = %115
  %121 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %122 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  store i64 0, i64* %12, align 8
  br label %123

123:                                              ; preds = %226, %120
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %126 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %229

129:                                              ; preds = %123
  %130 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %131 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %135 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %134, i32 0, i32 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %133, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %129
  %143 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %144 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %151 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %142, %129
  %154 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %155 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %159 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load i64, i64* %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %157, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %153
  %167 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %168 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %167, i32 0, i32 2
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load i64, i64* %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %175 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %166, %153
  %178 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %179 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %183 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %182, i32 0, i32 2
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = load i64, i64* %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %181, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %177
  %191 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %192 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %191, i32 0, i32 2
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load i64, i64* %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %199 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  br label %201

201:                                              ; preds = %190, %177
  %202 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %203 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %207 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %206, i32 0, i32 2
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = load i64, i64* %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %205, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %201
  %215 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %216 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %215, i32 0, i32 2
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %223 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  br label %225

225:                                              ; preds = %214, %201
  br label %226

226:                                              ; preds = %225
  %227 = load i64, i64* %12, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %12, align 8
  br label %123

229:                                              ; preds = %123
  br label %341

230:                                              ; preds = %115
  %231 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %232 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %231, i32 0, i32 1
  store i32 1, i32* %232, align 4
  store i64 0, i64* %12, align 8
  br label %233

233:                                              ; preds = %336, %230
  %234 = load i64, i64* %12, align 8
  %235 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %236 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ult i64 %234, %237
  br i1 %238, label %239, label %339

239:                                              ; preds = %233
  %240 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %241 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %245 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %244, i32 0, i32 2
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = load i64, i64* %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %243, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %239
  %253 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %254 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %253, i32 0, i32 2
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %254, align 8
  %256 = load i64, i64* %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %261 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 4
  br label %263

263:                                              ; preds = %252, %239
  %264 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %265 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %269 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %268, i32 0, i32 2
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = load i64, i64* %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp sgt i32 %267, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %263
  %277 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %278 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %277, i32 0, i32 2
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %278, align 8
  %280 = load i64, i64* %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %285 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  store i32 %283, i32* %286, align 8
  br label %287

287:                                              ; preds = %276, %263
  %288 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %289 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %293 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %292, i32 0, i32 2
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %293, align 8
  %295 = load i64, i64* %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %291, %298
  br i1 %299, label %300, label %311

300:                                              ; preds = %287
  %301 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %302 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %301, i32 0, i32 2
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = load i64, i64* %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %309 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 4
  br label %311

311:                                              ; preds = %300, %287
  %312 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %313 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %317 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %316, i32 0, i32 2
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = load i64, i64* %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp sgt i32 %315, %322
  br i1 %323, label %324, label %335

324:                                              ; preds = %311
  %325 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %326 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %325, i32 0, i32 2
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %326, align 8
  %328 = load i64, i64* %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %333 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  store i32 %331, i32* %334, align 8
  br label %335

335:                                              ; preds = %324, %311
  br label %336

336:                                              ; preds = %335
  %337 = load i64, i64* %12, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %12, align 8
  br label %233

339:                                              ; preds = %233
  br label %341

340:                                              ; preds = %115
  br label %341

341:                                              ; preds = %340, %339, %229
  br label %342

342:                                              ; preds = %341, %98
  ret i32 0
}

declare dso_local i32 @get_powerplay_table_entry_v1_0(%struct.pp_hwmgr*, i64, %struct.pp_power_state*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
