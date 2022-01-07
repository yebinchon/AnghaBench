; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.radeon_mode_info }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { i32 }
%struct._StateArray = type { i32, i64 }
%struct._ClockInfoArray = type { i32, i32* }
%struct._NonClockInfoArray = type { i32* }
%union.power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_atombios_parse_power_table_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_power_table_6(%struct.radeon_device* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca %union.pplib_clock_info*, align 8
  %14 = alloca %struct._StateArray*, align 8
  %15 = alloca %struct._ClockInfoArray*, align 8
  %16 = alloca %struct._NonClockInfoArray*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.power_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 2
  store %struct.radeon_mode_info* %25, %struct.radeon_mode_info** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* @DATA, align 4
  %27 = load i32, i32* @PowerPlayInfo, align 4
  %28 = call i32 @GetIndexIntoMasterTable(i32 %26, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %31, i32 %32, i32* null, i32* %21, i32* %22, i64* %20)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %2, align 4
  br label %359

37:                                               ; preds = %1
  %38 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %20, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %union.power_info*
  store %union.power_info* %45, %union.power_info** %18, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = load %union.power_info*, %union.power_info** %18, align 8
  %48 = bitcast %union.power_info* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = call i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device* %46, i32* %49)
  %51 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %20, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %union.power_info*, %union.power_info** %18, align 8
  %59 = bitcast %union.power_info* %58 to %struct.TYPE_8__*
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = add nsw i64 %57, %62
  %64 = inttoptr i64 %63 to %struct._StateArray*
  store %struct._StateArray* %64, %struct._StateArray** %14, align 8
  %65 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %20, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %union.power_info*, %union.power_info** %18, align 8
  %73 = bitcast %union.power_info* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = add nsw i64 %71, %76
  %78 = inttoptr i64 %77 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %78, %struct._ClockInfoArray** %15, align 8
  %79 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %union.power_info*, %union.power_info** %18, align 8
  %87 = bitcast %union.power_info* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le16_to_cpu(i32 %89)
  %91 = add nsw i64 %85, %90
  %92 = inttoptr i64 %91 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %92, %struct._NonClockInfoArray** %16, align 8
  %93 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %94 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %37
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %359

99:                                               ; preds = %37
  %100 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %101 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kcalloc(i32 %102, i32 4, i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_13__*
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %108, align 8
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %2, align 4
  br label %359

116:                                              ; preds = %99
  %117 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %118 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %23, align 8
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %288, %116
  %122 = load i32, i32* %7, align 4
  %123 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %124 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %291

127:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  %128 = load i32*, i32** %23, align 8
  %129 = bitcast i32* %128 to %union.pplib_power_state*
  store %union.pplib_power_state* %129, %union.pplib_power_state** %6, align 8
  %130 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %131 = bitcast %union.pplib_power_state* %130 to %struct.TYPE_10__*
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %9, align 4
  %134 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %16, align 8
  %135 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = bitcast i32* %139 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %140, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %141 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %142 = bitcast %union.pplib_power_state* %141 to %struct.TYPE_10__*
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %127
  %147 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %148 = bitcast %union.pplib_power_state* %147 to %struct.TYPE_10__*
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  br label %152

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151, %146
  %153 = phi i32 [ %150, %146 ], [ 1, %151 ]
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i8* @kcalloc(i32 %153, i32 4, i32 %154)
  %156 = bitcast i8* %155 to %struct.TYPE_11__*
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %164, align 8
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = icmp ne %struct.TYPE_11__* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %152
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %2, align 4
  br label %359

177:                                              ; preds = %152
  %178 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %179 = bitcast %union.pplib_power_state* %178 to %struct.TYPE_10__*
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %226

183:                                              ; preds = %177
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %222, %183
  %185 = load i32, i32* %8, align 4
  %186 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %187 = bitcast %union.pplib_power_state* %186 to %struct.TYPE_10__*
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %185, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %184
  %192 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %193 = bitcast %union.pplib_power_state* %192 to %struct.TYPE_10__*
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %10, align 4
  %200 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %15, align 8
  %201 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %15, align 8
  %205 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %203, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %202, i64 %208
  %210 = bitcast i32* %209 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %210, %union.pplib_clock_info** %13, align 8
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load %union.pplib_clock_info*, %union.pplib_clock_info** %13, align 8
  %215 = call i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %211, i32 %212, i32 %213, %union.pplib_clock_info* %214)
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %191
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %218, %191
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %184

225:                                              ; preds = %184
  br label %259

226:                                              ; preds = %177
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  store i32 %230, i32* %241, align 4
  %242 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %243 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %247 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  store i32 %245, i32* %256, align 4
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %226, %225
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  store i32 %260, i32* %268, align 8
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %259
  %272 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %276 = call i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %272, i32 %273, i32 %274, %struct._ATOM_PPLIB_NONCLOCK_INFO* %275)
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %271, %259
  %280 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %281 = bitcast %union.pplib_power_state* %280 to %struct.TYPE_10__*
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 2, %283
  %285 = load i32*, i32** %23, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %23, align 8
  br label %288

288:                                              ; preds = %279
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %121

291:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %292

292:                                              ; preds = %323, %291
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %326

296:                                              ; preds = %292
  %297 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %307, label %322

307:                                              ; preds = %296
  %308 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %309 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %308
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %307, %296
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %7, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %7, align 4
  br label %292

326:                                              ; preds = %292
  %327 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %328 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %357

332:                                              ; preds = %326
  %333 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %334 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 3
  store i32 %333, i32* %339, align 8
  %340 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  store i32 0, i32* %342, align 8
  %343 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %344 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i64 0
  %351 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %352 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i64 0
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 2
  store %struct.TYPE_11__* %350, %struct.TYPE_11__** %356, align 8
  br label %357

357:                                              ; preds = %332, %326
  %358 = load i32, i32* %11, align 4
  store i32 %358, i32* %2, align 4
  br label %359

359:                                              ; preds = %357, %175, %114, %97, %35
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device*, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device*, i32, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
