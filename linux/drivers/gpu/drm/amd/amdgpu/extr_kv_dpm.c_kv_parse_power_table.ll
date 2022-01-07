; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_18__, %struct.amdgpu_mode_info }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.kv_ps* }
%struct.kv_ps = type { i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct._StateArray = type { i32, i64 }
%struct._ClockInfoArray = type { i32, i32, i32* }
%struct._NonClockInfoArray = type { i32, i32* }
%union.power_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_parse_power_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.pplib_clock_info*, align 8
  %13 = alloca %struct._StateArray*, align 8
  %14 = alloca %struct._ClockInfoArray*, align 8
  %15 = alloca %struct._NonClockInfoArray*, align 8
  %16 = alloca %union.power_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.kv_ps*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  store %struct.amdgpu_mode_info* %26, %struct.amdgpu_mode_info** %4, align 8
  %27 = load i32, i32* @DATA, align 4
  %28 = load i32, i32* @PowerPlayInfo, align 4
  %29 = call i32 @GetIndexIntoMasterTable(i32 %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %32, i32 %33, i32* null, i32* %19, i32* %20, i32* %18)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %321

39:                                               ; preds = %1
  %40 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %18, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %union.power_info*
  store %union.power_info* %48, %union.power_info** %16, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = call i32 @amdgpu_add_thermal_controller(%struct.amdgpu_device* %49)
  %51 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %union.power_info*, %union.power_info** %16, align 8
  %59 = bitcast %union.power_info* %58 to %struct.TYPE_13__*
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = add nsw i32 %57, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct._StateArray*
  store %struct._StateArray* %65, %struct._StateArray** %13, align 8
  %66 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %union.power_info*, %union.power_info** %16, align 8
  %74 = bitcast %union.power_info* %73 to %struct.TYPE_13__*
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = add nsw i32 %72, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %80, %struct._ClockInfoArray** %14, align 8
  %81 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %union.power_info*, %union.power_info** %16, align 8
  %89 = bitcast %union.power_info* %88 to %struct.TYPE_13__*
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = add nsw i32 %87, %92
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %95, %struct._NonClockInfoArray** %15, align 8
  %96 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %97 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.TYPE_19__* @kcalloc(i32 %98, i32 4, i32 %99)
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %104, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = icmp ne %struct.TYPE_19__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %39
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %321

114:                                              ; preds = %39
  %115 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %116 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %245, %114
  %120 = load i32, i32* %7, align 4
  %121 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %122 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %248

125:                                              ; preds = %119
  %126 = load i32*, i32** %21, align 8
  %127 = bitcast i32* %126 to %union.pplib_power_state*
  store %union.pplib_power_state* %127, %union.pplib_power_state** %6, align 8
  %128 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %129 = bitcast %union.pplib_power_state* %128 to %struct.TYPE_14__*
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %10, align 4
  %132 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %133 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = bitcast i32* %137 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %138, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.kv_ps* @kzalloc(i32 4, i32 %139)
  store %struct.kv_ps* %140, %struct.kv_ps** %22, align 8
  %141 = load %struct.kv_ps*, %struct.kv_ps** %22, align 8
  %142 = icmp eq %struct.kv_ps* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %125
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = call i32 @kfree(%struct.TYPE_19__* %148)
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %321

152:                                              ; preds = %125
  %153 = load %struct.kv_ps*, %struct.kv_ps** %22, align 8
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  store %struct.kv_ps* %153, %struct.kv_ps** %162, align 8
  store i32 0, i32* %9, align 4
  %163 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %164 = bitcast %union.pplib_power_state* %163 to %struct.TYPE_14__*
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32* %167, i32** %23, align 8
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %219, %152
  %169 = load i32, i32* %8, align 4
  %170 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %171 = bitcast %union.pplib_power_state* %170 to %struct.TYPE_14__*
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %222

175:                                              ; preds = %168
  %176 = load i32*, i32** %23, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %183 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sge i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %219

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %222

192:                                              ; preds = %187
  %193 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %194 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %11, align 4
  %198 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %199 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  %204 = bitcast i32* %203 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %204, %union.pplib_clock_info** %12, align 8
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i64 %212
  %214 = load i32, i32* %9, align 4
  %215 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %216 = call i32 @kv_parse_pplib_clock_info(%struct.amdgpu_device* %205, %struct.TYPE_19__* %213, i32 %214, %union.pplib_clock_info* %215)
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %192, %186
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %168

222:                                              ; preds = %191, %168
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %225 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i64 %230
  %232 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %233 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %234 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @kv_parse_pplib_non_clock_info(%struct.amdgpu_device* %223, %struct.TYPE_19__* %231, %struct._ATOM_PPLIB_NONCLOCK_INFO* %232, i32 %235)
  %237 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %238 = bitcast %union.pplib_power_state* %237 to %struct.TYPE_14__*
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 2, %240
  %242 = load i32*, i32** %21, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %21, align 8
  br label %245

245:                                              ; preds = %222
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %119

248:                                              ; preds = %119
  %249 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %250 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %253 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  store i32 %251, i32* %255, align 8
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %317, %248
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %259 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %257, %262
  br i1 %263, label %264, label %320

264:                                              ; preds = %256
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %266 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  store i32 %274, i32* %11, align 4
  %275 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %276 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %280 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %278, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %277, i64 %283
  %285 = bitcast i32* %284 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %285, %union.pplib_clock_info** %12, align 8
  %286 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %287 = bitcast %union.pplib_clock_info* %286 to %struct.TYPE_15__*
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @le16_to_cpu(i32 %289)
  store i32 %290, i32* %24, align 4
  %291 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %292 = bitcast %union.pplib_clock_info* %291 to %struct.TYPE_15__*
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 16
  %296 = load i32, i32* %24, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %24, align 4
  %298 = load i32, i32* %24, align 4
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  store i32 %298, i32* %307, align 4
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %309 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 2
  store i64 0, i64* %316, align 8
  br label %317

317:                                              ; preds = %264
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %7, align 4
  br label %256

320:                                              ; preds = %256
  store i32 0, i32* %2, align 4
  br label %321

321:                                              ; preds = %320, %143, %111, %36
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_add_thermal_controller(%struct.amdgpu_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_19__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.kv_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_19__*) #1

declare dso_local i32 @kv_parse_pplib_clock_info(%struct.amdgpu_device*, %struct.TYPE_19__*, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @kv_parse_pplib_non_clock_info(%struct.amdgpu_device*, %struct.TYPE_19__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
