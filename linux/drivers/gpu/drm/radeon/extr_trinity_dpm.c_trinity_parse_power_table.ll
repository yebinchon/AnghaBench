; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_20__, %struct.radeon_mode_info }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { %struct.sumo_ps* }
%struct.sumo_ps = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.radeon_mode_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
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
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@RADEON_MAX_VCE_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @trinity_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_parse_power_table(%struct.radeon_device* %0) #0 {
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
  %22 = alloca %struct.sumo_ps*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  store %struct.radeon_mode_info* %26, %struct.radeon_mode_info** %4, align 8
  %27 = load i32, i32* @DATA, align 4
  %28 = load i32, i32* @PowerPlayInfo, align 4
  %29 = call i32 @GetIndexIntoMasterTable(i32 %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @atom_parse_data_header(%struct.TYPE_13__* %32, i32 %33, i32* null, i32* %19, i32* %20, i32* %18)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %329

39:                                               ; preds = %1
  %40 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %41 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %18, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %union.power_info*
  store %union.power_info* %48, %union.power_info** %16, align 8
  %49 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %union.power_info*, %union.power_info** %16, align 8
  %57 = bitcast %union.power_info* %56 to %struct.TYPE_14__*
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = add nsw i32 %55, %60
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct._StateArray*
  store %struct._StateArray* %63, %struct._StateArray** %13, align 8
  %64 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %65 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %union.power_info*, %union.power_info** %16, align 8
  %72 = bitcast %union.power_info* %71 to %struct.TYPE_14__*
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = add nsw i32 %70, %75
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %78, %struct._ClockInfoArray** %14, align 8
  %79 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %union.power_info*, %union.power_info** %16, align 8
  %87 = bitcast %union.power_info* %86 to %struct.TYPE_14__*
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = add nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %93, %struct._NonClockInfoArray** %15, align 8
  %94 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %95 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.TYPE_21__* @kcalloc(i32 %96, i32 4, i32 %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %102, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = icmp ne %struct.TYPE_21__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %39
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %329

112:                                              ; preds = %39
  %113 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %114 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %257, %112
  %118 = load i32, i32* %7, align 4
  %119 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %120 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %260

123:                                              ; preds = %117
  %124 = load i32*, i32** %21, align 8
  %125 = bitcast i32* %124 to %union.pplib_power_state*
  store %union.pplib_power_state* %125, %union.pplib_power_state** %6, align 8
  %126 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %127 = bitcast %union.pplib_power_state* %126 to %struct.TYPE_16__*
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  %130 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %131 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = bitcast i32* %135 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %136, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %123
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %329

150:                                              ; preds = %123
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.sumo_ps* @kzalloc(i32 4, i32 %151)
  store %struct.sumo_ps* %152, %struct.sumo_ps** %22, align 8
  %153 = load %struct.sumo_ps*, %struct.sumo_ps** %22, align 8
  %154 = icmp eq %struct.sumo_ps* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = call i32 @kfree(%struct.TYPE_21__* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %329

164:                                              ; preds = %150
  %165 = load %struct.sumo_ps*, %struct.sumo_ps** %22, align 8
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  store %struct.sumo_ps* %165, %struct.sumo_ps** %174, align 8
  store i32 0, i32* %9, align 4
  %175 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %176 = bitcast %union.pplib_power_state* %175 to %struct.TYPE_16__*
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32* %179, i32** %23, align 8
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %231, %164
  %181 = load i32, i32* %8, align 4
  %182 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %183 = bitcast %union.pplib_power_state* %182 to %struct.TYPE_16__*
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %181, %185
  br i1 %186, label %187, label %234

187:                                              ; preds = %180
  %188 = load i32*, i32** %23, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %195 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %187
  br label %231

199:                                              ; preds = %187
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %234

204:                                              ; preds = %199
  %205 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %206 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %11, align 4
  %210 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %211 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = bitcast i32* %215 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %216, %union.pplib_clock_info** %12, align 8
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i64 %224
  %226 = load i32, i32* %9, align 4
  %227 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %228 = call i32 @trinity_parse_pplib_clock_info(%struct.radeon_device* %217, %struct.TYPE_21__* %225, i32 %226, %union.pplib_clock_info* %227)
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %204, %198
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %180

234:                                              ; preds = %203, %180
  %235 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i64 %242
  %244 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %245 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %15, align 8
  %246 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @trinity_parse_pplib_non_clock_info(%struct.radeon_device* %235, %struct.TYPE_21__* %243, %struct._ATOM_PPLIB_NONCLOCK_INFO* %244, i32 %247)
  %249 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %250 = bitcast %union.pplib_power_state* %249 to %struct.TYPE_16__*
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 2, %252
  %254 = load i32*, i32** %21, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %21, align 8
  br label %257

257:                                              ; preds = %234
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %117

260:                                              ; preds = %117
  %261 = load %struct._StateArray*, %struct._StateArray** %13, align 8
  %262 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 8
  store i32 0, i32* %7, align 4
  br label %268

268:                                              ; preds = %325, %260
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @RADEON_MAX_VCE_LEVELS, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %328

272:                                              ; preds = %268
  %273 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %274 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %11, align 4
  %283 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %284 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %14, align 8
  %288 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %286, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %285, i64 %291
  %293 = bitcast i32* %292 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %293, %union.pplib_clock_info** %12, align 8
  %294 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %295 = bitcast %union.pplib_clock_info* %294 to %struct.TYPE_17__*
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le16_to_cpu(i32 %297)
  store i32 %298, i32* %24, align 4
  %299 = load %union.pplib_clock_info*, %union.pplib_clock_info** %12, align 8
  %300 = bitcast %union.pplib_clock_info* %299 to %struct.TYPE_17__*
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 16
  %304 = load i32, i32* %24, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %24, align 4
  %306 = load i32, i32* %24, align 4
  %307 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 1
  store i32 %306, i32* %315, align 4
  %316 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %317 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 2
  store i64 0, i64* %324, align 8
  br label %325

325:                                              ; preds = %272
  %326 = load i32, i32* %7, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %7, align 4
  br label %268

328:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %328, %155, %147, %109, %36
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_13__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_21__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.sumo_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_21__*) #1

declare dso_local i32 @trinity_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_21__*, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @trinity_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_21__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
