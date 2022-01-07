; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_remap_gtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_remap_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_13__*, %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.drm_rect, %struct.drm_framebuffer*, %struct.TYPE_8__* }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.intel_rotation_info }
%struct.intel_rotation_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i8* }
%struct.drm_i915_private = type { i32 }
%struct.intel_framebuffer = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@I915_GGTT_VIEW_ROTATED = common dso_local global i32 0, align 4
@I915_GGTT_VIEW_REMAPPED = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @intel_plane_remap_gtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_plane_remap_gtt(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.intel_framebuffer*, align 8
  %6 = alloca %struct.intel_rotation_info*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.drm_rect, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.drm_i915_private* @to_i915(i32 %33)
  store %struct.drm_i915_private* %34, %struct.drm_i915_private** %3, align 8
  %35 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %36 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %37, align 8
  store %struct.drm_framebuffer* %38, %struct.drm_framebuffer** %4, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %40 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %39)
  store %struct.intel_framebuffer* %40, %struct.intel_framebuffer** %5, align 8
  %41 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %42 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store %struct.intel_rotation_info* %43, %struct.intel_rotation_info** %6, align 8
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = call i32 @intel_tile_size(%struct.drm_i915_private* %53)
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %55 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %56 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %55, i32 0, i32 2
  %57 = call i32 @memset(%struct.TYPE_14__* %56, i32 0, i32 16)
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @drm_rotation_90_or_270(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %1
  %62 = load i32, i32* @I915_GGTT_VIEW_ROTATED, align 4
  br label %65

63:                                               ; preds = %1
  %64 = load i32, i32* @I915_GGTT_VIEW_REMAPPED, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %68 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %71 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 16
  store i32 %75, i32* %11, align 4
  %76 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %77 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 16
  store i32 %81, i32* %12, align 4
  %82 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %83 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = call i32 @drm_rect_width(%struct.drm_rect* %84)
  %86 = ashr i32 %85, 16
  store i32 %86, i32* %13, align 4
  %87 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %88 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = call i32 @drm_rect_height(%struct.drm_rect* %89)
  %91 = ashr i32 %90, 16
  store i32 %91, i32* %14, align 4
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @is_ccs_modifier(i32 %94)
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %98 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %11, align 4
  %101 = shl i32 %100, 16
  %102 = sub i32 0, %101
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %103, 16
  %105 = sub i32 0, %104
  %106 = call i32 @drm_rect_translate(%struct.drm_rect* %99, i32 %102, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @drm_rotation_90_or_270(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %65
  %111 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %112 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %13, align 4
  %115 = shl i32 %114, 16
  %116 = load i32, i32* %14, align 4
  %117 = shl i32 %116, 16
  %118 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %119 = call i32 @drm_rect_rotate(%struct.drm_rect* %113, i32 %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %65
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %395, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %398

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %130 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i32 [ %133, %128 ], [ 1, %134 ]
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %141 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %140, i32 0, i32 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  br label %146

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %139
  %147 = phi i32 [ %144, %139 ], [ 1, %145 ]
  store i32 %147, i32* %17, align 4
  %148 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %149 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %18, align 4
  %157 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @intel_tile_dims(%struct.drm_framebuffer* %157, i32 %158, i32* %19, i32* %20)
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %16, align 4
  %162 = udiv i32 %160, %161
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %17, align 4
  %165 = udiv i32 %163, %164
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %16, align 4
  %168 = udiv i32 %166, %167
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %17, align 4
  %171 = udiv i32 %169, %170
  store i32 %171, i32* %22, align 4
  %172 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %173 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %24, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %24, align 4
  %182 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %183 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %25, align 4
  %191 = add i32 %190, %189
  store i32 %191, i32* %25, align 4
  %192 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %193 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %196 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @intel_compute_aligned_offset(%struct.drm_i915_private* %192, i32* %24, i32* %25, %struct.drm_framebuffer* %193, i32 %194, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %26, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %26, align 4
  %207 = udiv i32 %206, %205
  store i32 %207, i32* %26, align 4
  %208 = load i32, i32* %26, align 4
  %209 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %210 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %209, i32 0, i32 0
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  store i32 %208, i32* %215, align 8
  %216 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %217 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %18, align 4
  %225 = mul i32 %223, %224
  %226 = call i8* @DIV_ROUND_UP(i32 %222, i32 %225)
  %227 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %228 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %227, i32 0, i32 0
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  store i8* %226, i8** %233, align 8
  %234 = load i32, i32* %24, align 4
  %235 = load i32, i32* %21, align 4
  %236 = add i32 %234, %235
  %237 = load i32, i32* %19, align 4
  %238 = call i8* @DIV_ROUND_UP(i32 %236, i32 %237)
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %241 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %240, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 %239, i32* %246, align 4
  %247 = load i32, i32* %25, align 4
  %248 = load i32, i32* %22, align 4
  %249 = add i32 %247, %248
  %250 = load i32, i32* %20, align 4
  %251 = call i8* @DIV_ROUND_UP(i32 %249, i32 %250)
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %254 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %253, i32 0, i32 0
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  store i32 %252, i32* %259, align 8
  %260 = load i32, i32* %7, align 4
  %261 = call i64 @drm_rotation_90_or_270(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %323

263:                                              ; preds = %146
  %264 = load i32, i32* %24, align 4
  %265 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 0
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* %25, align 4
  %267 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %21, align 4
  %270 = add i32 %268, %269
  %271 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 2
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* %25, align 4
  %273 = load i32, i32* %22, align 4
  %274 = add i32 %272, %273
  %275 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 3
  store i32 %274, i32* %275, align 4
  %276 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %277 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %276, i32 0, i32 0
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %19, align 4
  %285 = mul i32 %283, %284
  %286 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %287 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %286, i32 0, i32 0
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %287, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = mul i32 %293, %294
  %296 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %297 = call i32 @drm_rect_rotate(%struct.drm_rect* %27, i32 %285, i32 %295, i32 %296)
  %298 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %24, align 4
  %300 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %25, align 4
  %302 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %303 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %302, i32 0, i32 0
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %23, align 4
  %310 = load i32, i32* %23, align 4
  %311 = load i32, i32* %20, align 4
  %312 = mul i32 %310, %311
  %313 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %314 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %313, i32 0, i32 0
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  store i32 %312, i32* %319, align 8
  %320 = load i32, i32* %19, align 4
  %321 = load i32, i32* %20, align 4
  %322 = call i32 @swap(i32 %320, i32 %321)
  br label %344

323:                                              ; preds = %146
  %324 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %325 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %324, i32 0, i32 0
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %23, align 4
  %332 = load i32, i32* %23, align 4
  %333 = load i32, i32* %19, align 4
  %334 = mul i32 %332, %333
  %335 = load i32, i32* %18, align 4
  %336 = mul i32 %334, %335
  %337 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %338 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %337, i32 0, i32 0
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  store i32 %336, i32* %343, align 8
  br label %344

344:                                              ; preds = %323, %263
  %345 = load i32, i32* %19, align 4
  %346 = load i32, i32* %20, align 4
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %23, align 4
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %10, align 4
  %351 = mul i32 %349, %350
  %352 = call i32 @intel_adjust_tile_offset(i32* %24, i32* %25, i32 %345, i32 %346, i32 %347, i32 %348, i32 %351, i32 0)
  %353 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %354 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %353, i32 0, i32 0
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %6, align 8
  %362 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %361, i32 0, i32 0
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = mul i32 %360, %368
  %370 = load i32, i32* %15, align 4
  %371 = add i32 %370, %369
  store i32 %371, i32* %15, align 4
  %372 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %373 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %372, i32 0, i32 0
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 3
  store i64 0, i64* %378, align 8
  %379 = load i32, i32* %24, align 4
  %380 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %381 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %380, i32 0, i32 0
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  store i32 %379, i32* %386, align 4
  %387 = load i32, i32* %25, align 4
  %388 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %389 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %388, i32 0, i32 0
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %389, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 2
  store i32 %387, i32* %394, align 8
  br label %395

395:                                              ; preds = %344
  %396 = load i32, i32* %8, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %8, align 4
  br label %121

398:                                              ; preds = %121
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_ccs_modifier(i32) #1

declare dso_local i32 @drm_rect_translate(%struct.drm_rect*, i32, i32) #1

declare dso_local i32 @drm_rect_rotate(%struct.drm_rect*, i32, i32, i32) #1

declare dso_local i32 @intel_tile_dims(%struct.drm_framebuffer*, i32, i32*, i32*) #1

declare dso_local i32 @intel_compute_aligned_offset(%struct.drm_i915_private*, i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @intel_adjust_tile_offset(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
