; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_wm_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_wm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_format_info = type { i32*, i32 }
%struct.skl_wm_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i64 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Non planar format have single plane\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_Y_TILED = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Yf_TILED = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Y_TILED_CCS = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Yf_TILED_CCS = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, i32, %struct.drm_format_info*, i64, i32, i64, %struct.skl_wm_params*, i32)* @skl_compute_wm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_compute_wm_params(%struct.intel_crtc_state* %0, i32 %1, %struct.drm_format_info* %2, i64 %3, i32 %4, i64 %5, %struct.skl_wm_params* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_crtc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_format_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.skl_wm_params*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.intel_crtc*, align 8
  %19 = alloca %struct.drm_i915_private*, align 8
  %20 = alloca i64, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.drm_format_info* %2, %struct.drm_format_info** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.skl_wm_params* %6, %struct.skl_wm_params** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.intel_crtc* @to_intel_crtc(i32 %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %18, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %18, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.drm_i915_private* @to_i915(i32 %29)
  store %struct.drm_i915_private* %30, %struct.drm_i915_private** %19, align 8
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %8
  %34 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %35 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @is_planar_yuv_format(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %261

43:                                               ; preds = %33, %8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @I915_FORMAT_MOD_Y_TILED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @I915_FORMAT_MOD_Y_TILED_CCS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED_CCS, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %51, %47, %43
  %60 = phi i1 [ true, %51 ], [ true, %47 ], [ true, %43 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %63 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %69 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @I915_FORMAT_MOD_Y_TILED_CCS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %59
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED_CCS, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %59
  %78 = phi i1 [ true, %59 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %81 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %83 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @is_planar_yuv_format(i32 %84)
  %86 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %87 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %86, i32 0, i32 12
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %90 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %77
  %94 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %95 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %94, i32 0, i32 12
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %100 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93, %77
  %104 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %105 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %112 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %115 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %114, i32 0, i32 11
  store i64 %113, i64* %115, align 8
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  %117 = call i32 @INTEL_GEN(%struct.drm_i915_private* %116)
  %118 = icmp sge i32 %117, 11
  br i1 %118, label %119, label %131

119:                                              ; preds = %103
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %125 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %130 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %129, i32 0, i32 5
  store i32 256, i32* %130, align 4
  br label %134

131:                                              ; preds = %123, %119, %103
  %132 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %133 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %132, i32 0, i32 5
  store i32 512, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %14, align 4
  %136 = call i64 @drm_rotation_90_or_270(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %134
  %139 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %140 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %151 [
    i32 1, label %142
    i32 2, label %145
    i32 4, label %148
  ]

142:                                              ; preds = %138
  %143 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %144 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %143, i32 0, i32 6
  store i32 16, i32* %144, align 8
  br label %158

145:                                              ; preds = %138
  %146 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %147 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %146, i32 0, i32 6
  store i32 8, i32* %147, align 8
  br label %158

148:                                              ; preds = %138
  %149 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %150 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %149, i32 0, i32 6
  store i32 4, i32* %150, align 8
  br label %158

151:                                              ; preds = %138
  %152 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %153 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @MISSING_CASE(i32 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %9, align 4
  br label %261

158:                                              ; preds = %148, %145, %142
  br label %162

159:                                              ; preds = %134
  %160 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %161 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %160, i32 0, i32 6
  store i32 4, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %158
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  %164 = call i64 @skl_needs_memory_bw_wa(%struct.drm_i915_private* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %168 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 2
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %166, %162
  %172 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %173 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %176 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %180 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 4
  %181 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %182 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %171
  %186 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %187 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %190 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %194 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @DIV_ROUND_UP(i32 %192, i32 %195)
  store i64 %196, i64* %20, align 8
  %197 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  %198 = call i32 @INTEL_GEN(%struct.drm_i915_private* %197)
  %199 = icmp sge i32 %198, 10
  br i1 %199, label %200, label %203

200:                                              ; preds = %185
  %201 = load i64, i64* %20, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %20, align 8
  br label %203

203:                                              ; preds = %200, %185
  %204 = load i64, i64* %20, align 8
  %205 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %206 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @div_fixed16(i64 %204, i32 %207)
  %209 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %210 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %209, i32 0, i32 9
  store i8* %208, i8** %210, align 8
  br label %246

211:                                              ; preds = %171
  %212 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %213 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  %217 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  %218 = call i64 @IS_GEN(%struct.drm_i915_private* %217, i32 9)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %222 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %225 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @DIV_ROUND_UP(i32 %223, i32 %226)
  store i64 %227, i64* %20, align 8
  %228 = load i64, i64* %20, align 8
  %229 = call i8* @u32_to_fixed16(i64 %228)
  %230 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %231 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %230, i32 0, i32 9
  store i8* %229, i8** %231, align 8
  br label %245

232:                                              ; preds = %216, %211
  %233 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %234 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %237 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @DIV_ROUND_UP(i32 %235, i32 %238)
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %20, align 8
  %241 = load i64, i64* %20, align 8
  %242 = call i8* @u32_to_fixed16(i64 %241)
  %243 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %244 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %243, i32 0, i32 9
  store i8* %242, i8** %244, align 8
  br label %245

245:                                              ; preds = %232, %220
  br label %246

246:                                              ; preds = %245, %203
  %247 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %248 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %251 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %250, i32 0, i32 9
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @mul_u32_fixed16(i32 %249, i8* %252)
  %254 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %255 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %254, i32 0, i32 10
  store i32 %253, i32* %255, align 8
  %256 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %257 = call i32 @intel_get_linetime_us(%struct.intel_crtc_state* %256)
  %258 = call i32 @fixed16_to_u32_round_up(i32 %257)
  %259 = load %struct.skl_wm_params*, %struct.skl_wm_params** %16, align 8
  %260 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %259, i32 0, i32 8
  store i32 %258, i32* %260, align 8
  store i32 0, i32* %9, align 4
  br label %261

261:                                              ; preds = %246, %151, %39
  %262 = load i32, i32* %9, align 4
  ret i32 %262
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @is_planar_yuv_format(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i64 @skl_needs_memory_bw_wa(%struct.drm_i915_private*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @div_fixed16(i64, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @u32_to_fixed16(i64) #1

declare dso_local i32 @mul_u32_fixed16(i32, i8*) #1

declare dso_local i32 @fixed16_to_u32_round_up(i32) #1

declare dso_local i32 @intel_get_linetime_us(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
