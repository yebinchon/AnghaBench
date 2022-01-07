; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_18__, %struct.amdgpu_mode_info }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.si_ps* }
%struct.si_ps = type { i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
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
@SISLANDS_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_parse_power_table(%struct.amdgpu_device* %0) #0 {
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
  %22 = alloca %struct.si_ps*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  store %struct.amdgpu_mode_info* %27, %struct.amdgpu_mode_info** %4, align 8
  %28 = load i32, i32* @DATA, align 4
  %29 = load i32, i32* @PowerPlayInfo, align 4
  %30 = call i32 @GetIndexIntoMasterTable(i32 %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %33, i32 %34, i32* null, i32* %19, i32* %20, i32* %18)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %335

40:                                               ; preds = %1
  %41 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %union.power_info*
  store %union.power_info* %49, %union.power_info** %16, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = call i32 @amdgpu_add_thermal_controller(%struct.amdgpu_device* %50)
  %52 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %union.power_info*, %union.power_info** %16, align 8
  %60 = bitcast %union.power_info* %59 to %struct.TYPE_13__*
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = add nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct._StateArray*
  store %struct._StateArray* %66, %struct._StateArray** %13, align 8
  %67 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %union.power_info*, %union.power_info** %16, align 8
  %75 = bitcast %union.power_info* %74 to %struct.TYPE_13__*
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = add nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %81, %struct._ClockInfoArray** %14, align 8
  %82 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %83 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %union.power_info*, %union.power_info** %16, align 8
  %90 = bitcast %union.power_info* %89 to %struct.TYPE_13__*
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = add nsw i32 %88, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %96, %struct._NonClockInfoArray** %15, align 8
  %97 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %98 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.TYPE_19__* @kcalloc(i32 %99, i32 4, i32 %100)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %105, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = icmp ne %struct.TYPE_19__* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %40
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %335

115:                                              ; preds = %40
  %116 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %117 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %246, %115
  %121 = load i32, i32* %7, align 4
  %122 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %123 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %249

126:                                              ; preds = %120
  %127 = load i32*, i32** %21, align 8
  %128 = bitcast i32* %127 to %union.pplib_power_state*
  store %union.pplib_power_state* %128, %union.pplib_power_state** %6, align 8
  %129 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %130 = bitcast %union.pplib_power_state* %129 to %struct.TYPE_14__*
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %10, align 4
  %133 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %134 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = bitcast i32* %138 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %139, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.si_ps* @kzalloc(i32 4, i32 %140)
  store %struct.si_ps* %141, %struct.si_ps** %22, align 8
  %142 = load %struct.si_ps*, %struct.si_ps** %22, align 8
  %143 = icmp eq %struct.si_ps* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %126
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = call i32 @kfree(%struct.TYPE_19__* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %335

153:                                              ; preds = %126
  %154 = load %struct.si_ps*, %struct.si_ps** %22, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  store %struct.si_ps* %154, %struct.si_ps** %163, align 8
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i64 %171
  %173 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %174 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %175 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @si_parse_pplib_non_clock_info(%struct.amdgpu_device* %164, %struct.TYPE_19__* %172, %struct._ATOM_PPLIB_NONCLOCK_INFO* %173, i32 %176)
  store i32 0, i32* %9, align 4
  %178 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %179 = bitcast %union.pplib_power_state* %178 to %struct.TYPE_14__*
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32* %182, i32** %23, align 8
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %234, %153
  %184 = load i32, i32* %8, align 4
  %185 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %186 = bitcast %union.pplib_power_state* %185 to %struct.TYPE_14__*
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %237

190:                                              ; preds = %183
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %198 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  br label %234

202:                                              ; preds = %190
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @SISLANDS_MAX_HARDWARE_POWERLEVELS, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %237

207:                                              ; preds = %202
  %208 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %209 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %11, align 4
  %213 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %214 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  %219 = bitcast i32* %218 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %219, %union.pplib_clock_info** %12, align 8
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %222 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i64 %227
  %229 = load i32, i32* %9, align 4
  %230 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %231 = call i32 @si_parse_pplib_clock_info(%struct.amdgpu_device* %220, %struct.TYPE_19__* %228, i32 %229, %union.pplib_clock_info* %230)
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %207, %201
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %183

237:                                              ; preds = %206, %183
  %238 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %239 = bitcast %union.pplib_power_state* %238 to %struct.TYPE_14__*
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 2, %241
  %243 = load i32*, i32** %21, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %21, align 8
  br label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %120

249:                                              ; preds = %120
  %250 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %251 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %254 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  store i32 %252, i32* %256, align 8
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %331, %249
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %260 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %258, %263
  br i1 %264, label %265, label %334

265:                                              ; preds = %257
  %266 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %267 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %11, align 4
  %276 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %277 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %281 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = mul nsw i32 %279, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %278, i64 %284
  %286 = bitcast i32* %285 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %286, %union.pplib_clock_info** %12, align 8
  %287 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %288 = bitcast %union.pplib_clock_info* %287 to %struct.TYPE_15__*
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le16_to_cpu(i32 %290)
  store i32 %291, i32* %24, align 4
  %292 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %293 = bitcast %union.pplib_clock_info* %292 to %struct.TYPE_15__*
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 %295, 16
  %297 = load i32, i32* %24, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %24, align 4
  %299 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %300 = bitcast %union.pplib_clock_info* %299 to %struct.TYPE_15__*
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @le16_to_cpu(i32 %302)
  store i32 %303, i32* %25, align 4
  %304 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %305 = bitcast %union.pplib_clock_info* %304 to %struct.TYPE_15__*
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 16
  %309 = load i32, i32* %25, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %25, align 4
  %311 = load i32, i32* %24, align 4
  %312 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %313 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 1
  store i32 %311, i32* %320, align 4
  %321 = load i32, i32* %25, align 4
  %322 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %323 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 2
  store i32 %321, i32* %330, align 4
  br label %331

331:                                              ; preds = %265
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %7, align 4
  br label %257

334:                                              ; preds = %257
  store i32 0, i32* %2, align 4
  br label %335

335:                                              ; preds = %334, %144, %112, %37
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_add_thermal_controller(%struct.amdgpu_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_19__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.si_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_19__*) #1

declare dso_local i32 @si_parse_pplib_non_clock_info(%struct.amdgpu_device*, %struct.TYPE_19__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

declare dso_local i32 @si_parse_pplib_clock_info(%struct.amdgpu_device*, %struct.TYPE_19__*, i32, %union.pplib_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
