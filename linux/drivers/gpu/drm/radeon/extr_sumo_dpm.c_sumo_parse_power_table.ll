; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_16__, %struct.radeon_mode_info }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.sumo_ps* }
%struct.sumo_ps = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.radeon_mode_info = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { i32 }
%struct._StateArray = type { i32, i64 }
%struct._ClockInfoArray = type { i32, i32* }
%struct._NonClockInfoArray = type { i32, i32* }
%union.power_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @sumo_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sumo_parse_power_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
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
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.sumo_ps*, align 8
  %23 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  store %struct.radeon_mode_info* %25, %struct.radeon_mode_info** %4, align 8
  %26 = load i32, i32* @DATA, align 4
  %27 = load i32, i32* @PowerPlayInfo, align 4
  %28 = call i32 @GetIndexIntoMasterTable(i32 %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @atom_parse_data_header(%struct.TYPE_11__* %31, i32 %32, i32* null, i32* %19, i32* %20, i64* %18)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %256

38:                                               ; preds = %1
  %39 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %18, align 8
  %45 = add nsw i64 %43, %44
  %46 = inttoptr i64 %45 to %union.power_info*
  store %union.power_info* %46, %union.power_info** %16, align 8
  %47 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %48 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %18, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %union.power_info*, %union.power_info** %16, align 8
  %55 = bitcast %union.power_info* %54 to %struct.TYPE_12__*
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le16_to_cpu(i32 %57)
  %59 = add nsw i64 %53, %58
  %60 = inttoptr i64 %59 to %struct._StateArray*
  store %struct._StateArray* %60, %struct._StateArray** %13, align 8
  %61 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %62 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %18, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %union.power_info*, %union.power_info** %16, align 8
  %69 = bitcast %union.power_info* %68 to %struct.TYPE_12__*
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le16_to_cpu(i32 %71)
  %73 = add nsw i64 %67, %72
  %74 = inttoptr i64 %73 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %74, %struct._ClockInfoArray** %14, align 8
  %75 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %76 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %18, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %union.power_info*, %union.power_info** %16, align 8
  %83 = bitcast %union.power_info* %82 to %struct.TYPE_12__*
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le16_to_cpu(i32 %85)
  %87 = add nsw i64 %81, %86
  %88 = inttoptr i64 %87 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %88, %struct._NonClockInfoArray** %15, align 8
  %89 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %90 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.TYPE_17__* @kcalloc(i32 %91, i32 4, i32 %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %97, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = icmp ne %struct.TYPE_17__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %38
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %256

107:                                              ; preds = %38
  %108 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %109 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %245, %107
  %113 = load i32, i32* %7, align 4
  %114 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %115 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %248

118:                                              ; preds = %112
  %119 = load i32*, i32** %21, align 8
  %120 = bitcast i32* %119 to %union.pplib_power_state*
  store %union.pplib_power_state* %120, %union.pplib_power_state** %6, align 8
  %121 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %122 = bitcast %union.pplib_power_state* %121 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %10, align 4
  %125 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %126 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = bitcast i32* %130 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %131, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %118
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %256

145:                                              ; preds = %118
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call %struct.sumo_ps* @kzalloc(i32 4, i32 %146)
  store %struct.sumo_ps* %147, %struct.sumo_ps** %22, align 8
  %148 = load %struct.sumo_ps*, %struct.sumo_ps** %22, align 8
  %149 = icmp eq %struct.sumo_ps* %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = call i32 @kfree(%struct.TYPE_17__* %155)
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %256

159:                                              ; preds = %145
  %160 = load %struct.sumo_ps*, %struct.sumo_ps** %22, align 8
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  store %struct.sumo_ps* %160, %struct.sumo_ps** %169, align 8
  store i32 0, i32* %9, align 4
  %170 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %171 = bitcast %union.pplib_power_state* %170 to %struct.TYPE_14__*
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32* %174, i32** %23, align 8
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %219, %159
  %176 = load i32, i32* %8, align 4
  %177 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %178 = bitcast %union.pplib_power_state* %177 to %struct.TYPE_14__*
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %222

182:                                              ; preds = %175
  %183 = load i32*, i32** %23, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  br label %222

192:                                              ; preds = %182
  %193 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %194 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %11, align 4
  %198 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %199 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  %204 = bitcast i32* %203 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %204, %union.pplib_clock_info** %12, align 8
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i64 %212
  %214 = load i32, i32* %9, align 4
  %215 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %216 = call i32 @sumo_parse_pplib_clock_info(%struct.radeon_device* %205, %struct.TYPE_17__* %213, i32 %214, %union.pplib_clock_info* %215)
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %192
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %175

222:                                              ; preds = %191, %175
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i64 %230
  %232 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %233 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %234 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @sumo_parse_pplib_non_clock_info(%struct.radeon_device* %223, %struct.TYPE_17__* %231, %struct._ATOM_PPLIB_NONCLOCK_INFO* %232, i32 %235)
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
  br label %112

248:                                              ; preds = %112
  %249 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %250 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i32 %251, i32* %255, align 8
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %248, %150, %142, %104, %35
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_11__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_17__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.sumo_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_17__*) #1

declare dso_local i32 @sumo_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_17__*, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @sumo_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_17__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
