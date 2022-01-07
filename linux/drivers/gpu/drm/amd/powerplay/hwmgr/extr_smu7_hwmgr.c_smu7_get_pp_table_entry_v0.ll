; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry_v0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_pp_table_entry_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.pp_power_state = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.smu7_power_state = type { i32, i64, %struct.TYPE_16__*, %struct.TYPE_22__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.smu7_hwmgr = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, i32, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }

@PHM_VIslands_Magic = common dso_local global i32 0, align 4
@smu7_get_pp_table_entry_callback_func_v0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Single MCLK entry VDDCI/MCLK dependency table does not match VBIOS boot MCLK level\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Single VDDCI entry VDDCI/MCLK dependency table does not match VBIOS boot VDDCI level\00", align 1
@PP_StateClassificationFlag_ACPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.pp_power_state*)* @smu7_get_pp_table_entry_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_pp_table_entry_v0(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu7_power_state*, align 8
  %9 = alloca %struct.smu7_hwmgr*, align 8
  %10 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %11 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %15, %struct.smu7_hwmgr** %9, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %18, align 8
  store %struct.phm_clock_voltage_dependency_table* %19, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %20 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %21 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %20, i32 0, i32 3
  %22 = call i32 @memset(%struct.TYPE_17__* %21, i32 0, i32 4)
  %23 = load i32, i32* @PHM_VIslands_Magic, align 4
  %24 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %25 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %28 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %27, i32 0, i32 3
  %29 = bitcast %struct.TYPE_17__* %28 to %struct.smu7_power_state*
  store %struct.smu7_power_state* %29, %struct.smu7_power_state** %8, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %33 = load i32, i32* @smu7_get_pp_table_entry_callback_func_v0, align 4
  %34 = call i32 @pp_tables_get_entry(%struct.pp_hwmgr* %30, i64 %31, %struct.pp_power_state* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %36 = icmp ne %struct.phm_clock_voltage_dependency_table* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %3
  %38 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %39 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %44 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %43, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %50 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %42
  %57 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %58 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %64 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %56
  br label %71

71:                                               ; preds = %70, %37, %3
  %72 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %73 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %79 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %82 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PP_StateClassificationFlag_ACPI, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %90 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %89, i32 0, i32 2
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %96 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %88, %80
  %98 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %99 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %103 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %106 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %110 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %341, label %114

114:                                              ; preds = %97
  %115 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %116 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %339 [
    i32 128, label %119
    i32 129, label %229
  ]

119:                                              ; preds = %114
  %120 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %121 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  store i64 0, i64* %11, align 8
  br label %122

122:                                              ; preds = %225, %119
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %125 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %228

128:                                              ; preds = %122
  %129 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %130 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %134 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %133, i32 0, i32 2
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %132, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %128
  %142 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %143 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %142, i32 0, i32 2
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %150 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %141, %128
  %153 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %154 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %158 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %156, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %152
  %166 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %167 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %166, i32 0, i32 2
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %174 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  br label %176

176:                                              ; preds = %165, %152
  %177 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %178 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %182 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %181, i32 0, i32 2
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = load i64, i64* %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %180, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %176
  %190 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %191 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %190, i32 0, i32 2
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %198 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %176
  %201 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %202 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %206 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %205, i32 0, i32 2
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load i64, i64* %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %204, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %200
  %214 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %215 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %214, i32 0, i32 2
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %222 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  br label %224

224:                                              ; preds = %213, %200
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %11, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %11, align 8
  br label %122

228:                                              ; preds = %122
  br label %340

229:                                              ; preds = %114
  %230 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %231 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  store i64 0, i64* %11, align 8
  br label %232

232:                                              ; preds = %335, %229
  %233 = load i64, i64* %11, align 8
  %234 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %235 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ult i64 %233, %236
  br i1 %237, label %238, label %338

238:                                              ; preds = %232
  %239 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %240 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %244 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %243, i32 0, i32 2
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = load i64, i64* %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %242, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %238
  %252 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %253 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %252, i32 0, i32 2
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = load i64, i64* %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %260 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i32 %258, i32* %261, align 4
  br label %262

262:                                              ; preds = %251, %238
  %263 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %264 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %268 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %267, i32 0, i32 2
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = load i64, i64* %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %266, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %262
  %276 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %277 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %276, i32 0, i32 2
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = load i64, i64* %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %284 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  store i32 %282, i32* %285, align 8
  br label %286

286:                                              ; preds = %275, %262
  %287 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %288 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %292 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %291, i32 0, i32 2
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = load i64, i64* %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp slt i32 %290, %297
  br i1 %298, label %299, label %310

299:                                              ; preds = %286
  %300 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %301 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %300, i32 0, i32 2
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = load i64, i64* %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %308 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  store i32 %306, i32* %309, align 4
  br label %310

310:                                              ; preds = %299, %286
  %311 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %312 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %316 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %315, i32 0, i32 2
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %316, align 8
  %318 = load i64, i64* %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp sgt i32 %314, %321
  br i1 %322, label %323, label %334

323:                                              ; preds = %310
  %324 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %325 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %324, i32 0, i32 2
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = load i64, i64* %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %332 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 8
  br label %334

334:                                              ; preds = %323, %310
  br label %335

335:                                              ; preds = %334
  %336 = load i64, i64* %11, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %11, align 8
  br label %232

338:                                              ; preds = %232
  br label %340

339:                                              ; preds = %114
  br label %340

340:                                              ; preds = %339, %338, %228
  br label %341

341:                                              ; preds = %340, %97
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pp_tables_get_entry(%struct.pp_hwmgr*, i64, %struct.pp_power_state*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
