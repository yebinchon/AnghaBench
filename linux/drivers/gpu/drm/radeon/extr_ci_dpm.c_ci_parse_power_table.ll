; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_20__, %struct.radeon_mode_info }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.ci_ps* }
%struct.ci_ps = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.radeon_mode_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct._StateArray = type { i32, i64 }
%struct._ClockInfoArray = type { i32, i32, i32* }
%struct._NonClockInfoArray = type { i32, i32* }
%union.power_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISLANDS_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@RADEON_MAX_VCE_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_parse_power_table(%struct.radeon_device* %0) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.ci_ps*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  store %struct.radeon_mode_info* %27, %struct.radeon_mode_info** %4, align 8
  %28 = load i32, i32* @DATA, align 4
  %29 = load i32, i32* @PowerPlayInfo, align 4
  %30 = call i32 @GetIndexIntoMasterTable(i32 %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @atom_parse_data_header(%struct.TYPE_13__* %33, i32 %34, i32* null, i32* %19, i32* %20, i32* %18)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %343

40:                                               ; preds = %1
  %41 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %union.power_info*
  store %union.power_info* %49, %union.power_info** %16, align 8
  %50 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %union.power_info*, %union.power_info** %16, align 8
  %58 = bitcast %union.power_info* %57 to %struct.TYPE_14__*
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = add nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct._StateArray*
  store %struct._StateArray* %64, %struct._StateArray** %13, align 8
  %65 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %union.power_info*, %union.power_info** %16, align 8
  %73 = bitcast %union.power_info* %72 to %struct.TYPE_14__*
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = add nsw i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %79, %struct._ClockInfoArray** %14, align 8
  %80 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %union.power_info*, %union.power_info** %16, align 8
  %88 = bitcast %union.power_info* %87 to %struct.TYPE_14__*
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = add nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %94, %struct._NonClockInfoArray** %15, align 8
  %95 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %96 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.TYPE_21__* @kcalloc(i32 %97, i32 4, i32 %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  store %struct.TYPE_21__* %99, %struct.TYPE_21__** %103, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %40
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %343

113:                                              ; preds = %40
  %114 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %115 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %258, %113
  %119 = load i32, i32* %7, align 4
  %120 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %121 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %261

124:                                              ; preds = %118
  %125 = load i32*, i32** %21, align 8
  %126 = bitcast i32* %125 to %union.pplib_power_state*
  store %union.pplib_power_state* %126, %union.pplib_power_state** %6, align 8
  %127 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %128 = bitcast %union.pplib_power_state* %127 to %struct.TYPE_16__*
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %10, align 4
  %131 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %132 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = bitcast i32* %136 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %137, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %124
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %343

151:                                              ; preds = %124
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call %struct.ci_ps* @kzalloc(i32 4, i32 %152)
  store %struct.ci_ps* %153, %struct.ci_ps** %22, align 8
  %154 = load %struct.ci_ps*, %struct.ci_ps** %22, align 8
  %155 = icmp eq %struct.ci_ps* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = call i32 @kfree(%struct.TYPE_21__* %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %343

165:                                              ; preds = %151
  %166 = load %struct.ci_ps*, %struct.ci_ps** %22, align 8
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  store %struct.ci_ps* %166, %struct.ci_ps** %175, align 8
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i64 %183
  %185 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %186 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %187 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @ci_parse_pplib_non_clock_info(%struct.radeon_device* %176, %struct.TYPE_21__* %184, %struct._ATOM_PPLIB_NONCLOCK_INFO* %185, i32 %188)
  store i32 0, i32* %9, align 4
  %190 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %191 = bitcast %union.pplib_power_state* %190 to %struct.TYPE_16__*
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32* %194, i32** %23, align 8
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %246, %165
  %196 = load i32, i32* %8, align 4
  %197 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %198 = bitcast %union.pplib_power_state* %197 to %struct.TYPE_16__*
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %196, %200
  br i1 %201, label %202, label %249

202:                                              ; preds = %195
  %203 = load i32*, i32** %23, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %210 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp sge i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %246

214:                                              ; preds = %202
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @CISLANDS_MAX_HARDWARE_POWERLEVELS, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %249

219:                                              ; preds = %214
  %220 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %221 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %11, align 4
  %225 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %226 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %224, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %223, i64 %229
  %231 = bitcast i32* %230 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %231, %union.pplib_clock_info** %12, align 8
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 %239
  %241 = load i32, i32* %9, align 4
  %242 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %243 = call i32 @ci_parse_pplib_clock_info(%struct.radeon_device* %232, %struct.TYPE_21__* %240, i32 %241, %union.pplib_clock_info* %242)
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %219, %213
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %195

249:                                              ; preds = %218, %195
  %250 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %251 = bitcast %union.pplib_power_state* %250 to %struct.TYPE_16__*
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 2, %253
  %255 = load i32*, i32** %21, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %21, align 8
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %118

261:                                              ; preds = %118
  %262 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %263 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 8
  store i32 0, i32* %7, align 4
  br label %269

269:                                              ; preds = %339, %261
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @RADEON_MAX_VCE_LEVELS, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %342

273:                                              ; preds = %269
  %274 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %11, align 4
  %284 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %285 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %289 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %287, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %286, i64 %292
  %294 = bitcast i32* %293 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %294, %union.pplib_clock_info** %12, align 8
  %295 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %296 = bitcast %union.pplib_clock_info* %295 to %struct.TYPE_17__*
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @le16_to_cpu(i32 %298)
  store i32 %299, i32* %24, align 4
  %300 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %301 = bitcast %union.pplib_clock_info* %300 to %struct.TYPE_17__*
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = shl i32 %303, 16
  %305 = load i32, i32* %24, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %24, align 4
  %307 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %308 = bitcast %union.pplib_clock_info* %307 to %struct.TYPE_17__*
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @le16_to_cpu(i32 %310)
  store i32 %311, i32* %25, align 4
  %312 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %313 = bitcast %union.pplib_clock_info* %312 to %struct.TYPE_17__*
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = shl i32 %315, 16
  %317 = load i32, i32* %25, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %25, align 4
  %319 = load i32, i32* %24, align 4
  %320 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %321 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  store i32 %319, i32* %328, align 4
  %329 = load i32, i32* %25, align 4
  %330 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %331 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 2
  store i32 %329, i32* %338, align 4
  br label %339

339:                                              ; preds = %273
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %269

342:                                              ; preds = %269
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %342, %156, %148, %110, %37
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_13__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_21__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.ci_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_21__*) #1

declare dso_local i32 @ci_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_21__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

declare dso_local i32 @ci_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_21__*, i32, %union.pplib_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
