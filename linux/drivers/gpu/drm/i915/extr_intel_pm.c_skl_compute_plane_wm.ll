; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_plane_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_plane_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.skl_wm_params = type { i32, i32, i32, i64, i64, i32, i64, i32, i64, i32, i64 }
%struct.skl_wm_level = type { i64, i32, i8*, i64 }
%struct.drm_i915_private = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@U16_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i32, %struct.skl_wm_params*, %struct.skl_wm_level*, %struct.skl_wm_level*)* @skl_compute_plane_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_compute_plane_wm(%struct.intel_crtc_state* %0, i32 %1, %struct.skl_wm_params* %2, %struct.skl_wm_level* %3, %struct.skl_wm_level* %4) #0 {
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_wm_params*, align 8
  %9 = alloca %struct.skl_wm_level*, align 8
  %10 = alloca %struct.skl_wm_level*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.skl_wm_params* %2, %struct.skl_wm_params** %8, align 8
  store %struct.skl_wm_level* %3, %struct.skl_wm_level** %9, align 8
  store %struct.skl_wm_level* %4, %struct.skl_wm_level** %10, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_i915_private* @to_i915(i32 %25)
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %11, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  store i64 0, i64* %18, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load i8*, i8** @U16_MAX, align 8
  %39 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %40 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %301

41:                                               ; preds = %5
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %43 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %47 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %45, %41
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %55, 4
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %59 = call i64 @skl_needs_memory_bw_wa(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %63 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %62, i32 0, i32 10
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 15
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %66, %61, %57
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %71 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %72 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %75 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %79 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @skl_wm_method1(%struct.drm_i915_private* %70, i32 %73, i32 %76, i64 %77, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %83 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %86 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %92 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @skl_wm_method2(i32 %84, i32 %89, i64 %90, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %96 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %69
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %102 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @max_fixed16(i32 %100, i32 %103)
  store i32 %104, i32* %15, align 4
  br label %156

105:                                              ; preds = %69
  %106 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %107 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %108, %113
  %115 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %116 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %114, %117
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %131

120:                                              ; preds = %105
  %121 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %122 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %125 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %123, %126
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %15, align 4
  br label %155

131:                                              ; preds = %120, %105
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %134 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %139 = call i64 @IS_GEN(%struct.drm_i915_private* %138, i32 9)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %143 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @min_fixed16(i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  br label %151

149:                                              ; preds = %141, %137
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %149, %145
  br label %154

152:                                              ; preds = %131
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %152, %151
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155, %99
  %157 = load i32, i32* %15, align 4
  %158 = call i64 @fixed16_to_u32_round_up(i32 %157)
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %16, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %162 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @div_round_up_fixed16(i32 %160, i32 %163)
  store i64 %164, i64* %17, align 8
  %165 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %166 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %156
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %170 = call i64 @IS_BROXTON(%struct.drm_i915_private* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %225

172:                                              ; preds = %168, %156
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %177 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %182 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @fixed16_to_u32_round_up(i32 %183)
  %185 = load i64, i64* %16, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %16, align 8
  br label %187

187:                                              ; preds = %180, %175, %172
  %188 = load i32, i32* %7, align 4
  %189 = icmp sge i32 %188, 1
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = icmp sle i32 %191, 7
  br i1 %192, label %193, label %224

193:                                              ; preds = %190
  %194 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %195 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %200 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @fixed16_to_u32_round_up(i32 %201)
  %203 = load i64, i64* %16, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %16, align 8
  %205 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %206 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %17, align 8
  %209 = add nsw i64 %208, %207
  store i64 %209, i64* %17, align 8
  br label %213

210:                                              ; preds = %193
  %211 = load i64, i64* %16, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %16, align 8
  br label %213

213:                                              ; preds = %210, %198
  %214 = load %struct.skl_wm_level*, %struct.skl_wm_level** %9, align 8
  %215 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %16, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.skl_wm_level*, %struct.skl_wm_level** %9, align 8
  %221 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %16, align 8
  br label %223

223:                                              ; preds = %219, %213
  br label %224

224:                                              ; preds = %223, %190, %187
  br label %225

225:                                              ; preds = %224, %168
  %226 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %227 = call i32 @INTEL_GEN(%struct.drm_i915_private* %226)
  %228 = icmp sge i32 %227, 11
  br i1 %228, label %229, label %273

229:                                              ; preds = %225
  %230 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %231 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %229
  %235 = load i64, i64* %17, align 8
  %236 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %237 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = srem i64 %235, %238
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %243 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %19, align 4
  br label %258

246:                                              ; preds = %234
  %247 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %248 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = mul nsw i64 %249, 2
  %251 = load i64, i64* %17, align 8
  %252 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %253 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = srem i64 %251, %254
  %256 = sub nsw i64 %250, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %19, align 4
  br label %258

258:                                              ; preds = %246, %241
  %259 = load i64, i64* %17, align 8
  %260 = load i32, i32* %19, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %259, %261
  %263 = load %struct.skl_wm_params*, %struct.skl_wm_params** %8, align 8
  %264 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @mul_round_up_u32_fixed16(i64 %262, i32 %265)
  store i64 %266, i64* %18, align 8
  br label %272

267:                                              ; preds = %229
  %268 = load i64, i64* %16, align 8
  %269 = load i64, i64* %16, align 8
  %270 = call i64 @DIV_ROUND_UP(i64 %269, i32 10)
  %271 = add nsw i64 %268, %270
  store i64 %271, i64* %18, align 8
  br label %272

272:                                              ; preds = %267, %258
  br label %273

273:                                              ; preds = %272, %225
  %274 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @skl_wm_has_lines(%struct.drm_i915_private* %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  store i64 0, i64* %17, align 8
  br label %279

279:                                              ; preds = %278, %273
  %280 = load i64, i64* %17, align 8
  %281 = icmp sgt i64 %280, 31
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i8*, i8** @U16_MAX, align 8
  %284 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %285 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %284, i32 0, i32 2
  store i8* %283, i8** %285, align 8
  br label %301

286:                                              ; preds = %279
  %287 = load i64, i64* %16, align 8
  %288 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %289 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  %290 = load i64, i64* %17, align 8
  %291 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %292 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %291, i32 0, i32 3
  store i64 %290, i64* %292, align 8
  %293 = load i64, i64* %18, align 8
  %294 = load i64, i64* %16, align 8
  %295 = call i8* @max(i64 %293, i64 %294)
  %296 = getelementptr i8, i8* %295, i64 1
  %297 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %298 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %297, i32 0, i32 2
  store i8* %296, i8** %298, align 8
  %299 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %300 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %299, i32 0, i32 1
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %286, %282, %37
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @skl_needs_memory_bw_wa(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_wm_method1(%struct.drm_i915_private*, i32, i32, i64, i32) #1

declare dso_local i32 @skl_wm_method2(i32, i32, i64, i32) #1

declare dso_local i32 @max_fixed16(i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @min_fixed16(i32, i32) #1

declare dso_local i64 @fixed16_to_u32_round_up(i32) #1

declare dso_local i64 @div_round_up_fixed16(i32, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @mul_round_up_u32_fixed16(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @skl_wm_has_lines(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
