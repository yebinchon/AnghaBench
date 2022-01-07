; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_main_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_main_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, %struct.drm_framebuffer*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.drm_framebuffer = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"requested Y/RGB source size %dx%d too big (limit %dx%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Unable to find suitable display surface offset due to X-tiling\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Unable to find suitable display surface offset due to CCS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @skl_check_main_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_check_main_surface(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %4, align 8
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %26, align 8
  store %struct.drm_framebuffer* %27, %struct.drm_framebuffer** %5, align 8
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %33 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 16
  store i32 %37, i32* %7, align 4
  %38 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %39 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %8, align 4
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = call i32 @drm_rect_width(%struct.TYPE_12__* %46)
  %48 = ashr i32 %47, 16
  store i32 %48, i32* %9, align 4
  %49 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %50 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = call i32 @drm_rect_height(%struct.TYPE_12__* %51)
  %53 = ashr i32 %52, 16
  store i32 %53, i32* %10, align 4
  store i32 4096, i32* %12, align 4
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %55 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i32 @INTEL_GEN(%struct.drm_i915_private* %60)
  %62 = icmp sge i32 %61, 11
  br i1 %62, label %63, label %67

63:                                               ; preds = %1
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @icl_max_plane_width(%struct.drm_framebuffer* %64, i32 0, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %84

67:                                               ; preds = %1
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %69 = call i32 @INTEL_GEN(%struct.drm_i915_private* %68)
  %70 = icmp sge i32 %69, 10
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %67
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @glk_max_plane_width(%struct.drm_framebuffer* %76, i32 0, i32 %77)
  store i32 %78, i32* %11, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @skl_max_plane_width(%struct.drm_framebuffer* %80, i32 0, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %249

100:                                              ; preds = %88
  %101 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %102 = call i32 @intel_add_fb_offsets(i32* %7, i32* %8, %struct.intel_plane_state* %101, i32 0)
  %103 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %104 = call i32 @intel_plane_compute_aligned_offset(i32* %7, i32* %8, %struct.intel_plane_state* %103, i32 0)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %106 = call i32 @intel_surf_alignment(%struct.drm_framebuffer* %105, i32 0)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %100
  %111 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %114, 1
  %116 = xor i32 %115, -1
  %117 = and i32 %113, %116
  %118 = call i32 @intel_plane_adjust_aligned_offset(i32* %7, i32* %8, %struct.intel_plane_state* %111, i32 0, i32 %112, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %110, %100
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %121 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %161

125:                                              ; preds = %119
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %127 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %153, %125
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %16, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %140 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %138, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %133
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %249

153:                                              ; preds = %146
  %154 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sub nsw i32 %156, %157
  %159 = call i32 @intel_plane_adjust_aligned_offset(i32* %7, i32* %8, %struct.intel_plane_state* %154, i32 0, i32 %155, i32 %158)
  store i32 %159, i32* %14, align 4
  br label %133

160:                                              ; preds = %133
  br label %161

161:                                              ; preds = %160, %119
  %162 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %163 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @is_ccs_modifier(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %210

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %180, %167
  %169 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @skl_check_main_ccs_coordinates(%struct.intel_plane_state* %169, i32 %170, i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  br i1 %175, label %176, label %187

176:                                              ; preds = %168
  %177 = load i32, i32* %14, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %187

180:                                              ; preds = %176
  %181 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 @intel_plane_adjust_aligned_offset(i32* %7, i32* %8, %struct.intel_plane_state* %181, i32 0, i32 %182, i32 %185)
  store i32 %186, i32* %14, align 4
  br label %168

187:                                              ; preds = %179, %168
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %190 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %188, %194
  br i1 %195, label %205, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %199 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %198, i32 0, i32 1
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %197, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %196, %187
  %206 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %249

209:                                              ; preds = %196
  br label %210

210:                                              ; preds = %209, %161
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %213 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %219 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  store i32 %217, i32* %222, align 4
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %225 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  store i32 %223, i32* %228, align 4
  %229 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %230 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i32, i32* %7, align 4
  %233 = shl i32 %232, 16
  %234 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %235 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %233, %238
  %240 = load i32, i32* %8, align 4
  %241 = shl i32 %240, 16
  %242 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %243 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %241, %246
  %248 = call i32 @drm_rect_translate(%struct.TYPE_12__* %231, i32 %239, i32 %247)
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %210, %205, %149, %92
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_12__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_12__*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_max_plane_width(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_max_plane_width(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i32 @skl_max_plane_width(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_add_fb_offsets(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @intel_plane_compute_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @intel_surf_alignment(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @intel_plane_adjust_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32, i32, i32) #1

declare dso_local i64 @is_ccs_modifier(i64) #1

declare dso_local i32 @skl_check_main_ccs_coordinates(%struct.intel_plane_state*, i32, i32, i32) #1

declare dso_local i32 @drm_rect_translate(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
