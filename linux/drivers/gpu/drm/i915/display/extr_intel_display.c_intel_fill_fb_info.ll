; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fill_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fill_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32*, i32*, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.intel_framebuffer = type { %struct.TYPE_6__*, %struct.TYPE_9__*, %struct.intel_rotation_info }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.intel_rotation_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"bad fb plane %d offset: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"fb too big for bo (need %llu bytes, have %zu bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_framebuffer*)* @intel_fill_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fill_fb_info(%struct.drm_i915_private* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.intel_framebuffer*, align 8
  %7 = alloca %struct.intel_rotation_info*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.drm_rect, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %35 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %34)
  store %struct.intel_framebuffer* %35, %struct.intel_framebuffer** %6, align 8
  %36 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %37 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %36, i32 0, i32 2
  store %struct.intel_rotation_info* %37, %struct.intel_rotation_info** %7, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %39 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %38)
  store %struct.drm_i915_gem_object* %39, %struct.drm_i915_gem_object** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = call i32 @intel_tile_size(%struct.drm_i915_private* %45)
  store i32 %46, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %462, %2
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %465

51:                                               ; preds = %47
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %62 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @drm_framebuffer_plane_width(i32 %63, %struct.drm_framebuffer* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @drm_framebuffer_plane_height(i32 %69, %struct.drm_framebuffer* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @intel_fb_offset_to_xy(i32* %19, i32* %20, %struct.drm_framebuffer* %73, i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %51
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %81 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %86)
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %3, align 4
  br label %486

89:                                               ; preds = %51
  %90 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %91 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @is_ccs_modifier(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %174

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %174

98:                                               ; preds = %95
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %22, align 4
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 3
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %23, align 4
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (%struct.drm_framebuffer*, i32, ...) @intel_tile_dims(%struct.drm_framebuffer* %109, i32 %110, i32* %24, i32* %25)
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %24, align 4
  %114 = mul nsw i32 %113, %112
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %25, align 4
  %117 = mul nsw i32 %116, %115
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %22, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %24, align 4
  %122 = srem i32 %120, %121
  store i32 %122, i32* %28, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %23, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %25, align 4
  %127 = srem i32 %125, %126
  store i32 %127, i32* %29, align 4
  %128 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %129 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %24, align 4
  %135 = srem i32 %133, %134
  store i32 %135, i32* %26, align 4
  %136 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %137 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %25, align 4
  %143 = srem i32 %141, %142
  store i32 %143, i32* %27, align 4
  %144 = load i32, i32* %26, align 4
  %145 = load i32, i32* %28, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %98
  %148 = load i32, i32* %27, align 4
  %149 = load i32, i32* %29, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %147, %98
  %152 = load i32, i32* %26, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %157 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %163 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %153, i32 %154, i32 %155, i32 %161, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %486

173:                                              ; preds = %147
  br label %174

174:                                              ; preds = %173, %95, %89
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %174
  %178 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %179 = call i64 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add i32 %182, %183
  %185 = load i32, i32* %16, align 4
  %186 = mul i32 %184, %185
  %187 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %188 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ugt i32 %186, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %181
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %198 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %196, i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %486

207:                                              ; preds = %181, %177, %174
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %210 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* %20, align 4
  %217 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %218 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  store i32 %216, i32* %223, align 4
  %224 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %225 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %228 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @intel_compute_aligned_offset(%struct.drm_i915_private* %224, i32* %19, i32* %20, %struct.drm_framebuffer* %225, i32 %226, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %18, align 4
  %239 = udiv i32 %238, %237
  store i32 %239, i32* %18, align 4
  %240 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %241 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @is_surface_linear(i32 %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %437, label %246

246:                                              ; preds = %207
  %247 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %248 = load i32, i32* %11, align 4
  %249 = call i32 (%struct.drm_framebuffer*, i32, ...) @intel_tile_dims(%struct.drm_framebuffer* %247, i32 %248, i32* %30, i32* %31)
  %250 = load i32, i32* %18, align 4
  %251 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %252 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %251, i32 0, i32 0
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  store i32 %250, i32* %257, align 4
  %258 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %259 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %30, align 4
  %266 = load i32, i32* %16, align 4
  %267 = mul i32 %265, %266
  %268 = call i8* @DIV_ROUND_UP(i32 %264, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %271 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %270, i32 0, i32 0
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  store i32 %269, i32* %276, align 4
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* %14, align 4
  %279 = add i32 %277, %278
  %280 = load i32, i32* %30, align 4
  %281 = call i8* @DIV_ROUND_UP(i32 %279, i32 %280)
  %282 = ptrtoint i8* %281 to i32
  %283 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %284 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %283, i32 0, i32 0
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  store i32 %282, i32* %289, align 4
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %15, align 4
  %292 = add i32 %290, %291
  %293 = load i32, i32* %31, align 4
  %294 = call i8* @DIV_ROUND_UP(i32 %292, i32 %293)
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %297 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %296, i32 0, i32 0
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  store i32 %295, i32* %302, align 4
  %303 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %304 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %303, i32 0, i32 0
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %31, align 4
  %312 = mul i32 %310, %311
  %313 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %314 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %313, i32 0, i32 0
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  store i32 %312, i32* %319, align 4
  %320 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %321 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %320, i32 0, i32 0
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %329 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %328, i32 0, i32 0
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = mul i32 %327, %335
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %19, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %246
  %340 = load i32, i32* %17, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %17, align 4
  br label %342

342:                                              ; preds = %339, %246
  %343 = load i32, i32* %19, align 4
  %344 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 0
  store i32 %343, i32* %344, align 4
  %345 = load i32, i32* %20, align 4
  %346 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 1
  store i32 %345, i32* %346, align 4
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* %14, align 4
  %349 = add i32 %347, %348
  %350 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 2
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* %20, align 4
  %352 = load i32, i32* %15, align 4
  %353 = add i32 %351, %352
  %354 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 3
  store i32 %353, i32* %354, align 4
  %355 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %356 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %355, i32 0, i32 0
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %356, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %30, align 4
  %364 = mul i32 %362, %363
  %365 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %366 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %365, i32 0, i32 0
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %366, align 8
  %368 = load i32, i32* %11, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %31, align 4
  %374 = mul i32 %372, %373
  %375 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %376 = call i32 @drm_rect_rotate(%struct.drm_rect* %33, i32 %364, i32 %374, i32 %375)
  %377 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %19, align 4
  %379 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %20, align 4
  %381 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %382 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %381, i32 0, i32 0
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %31, align 4
  %390 = udiv i32 %388, %389
  store i32 %390, i32* %32, align 4
  %391 = load i32, i32* %30, align 4
  %392 = load i32, i32* %31, align 4
  %393 = call i32 @swap(i32 %391, i32 %392)
  %394 = load i32, i32* %30, align 4
  %395 = load i32, i32* %31, align 4
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %32, align 4
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %13, align 4
  %400 = mul i32 %398, %399
  %401 = call i32 @intel_adjust_tile_offset(i32* %19, i32* %20, i32 %394, i32 %395, i32 %396, i32 %397, i32 %400, i32 0)
  %402 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %403 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %402, i32 0, i32 0
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %411 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %410, i32 0, i32 0
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = mul i32 %409, %417
  %419 = load i32, i32* %9, align 4
  %420 = add i32 %419, %418
  store i32 %420, i32* %9, align 4
  %421 = load i32, i32* %19, align 4
  %422 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %423 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %422, i32 0, i32 0
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %423, align 8
  %425 = load i32, i32* %11, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  store i32 %421, i32* %428, align 4
  %429 = load i32, i32* %20, align 4
  %430 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %431 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %430, i32 0, i32 0
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 2
  store i32 %429, i32* %436, align 4
  br label %456

437:                                              ; preds = %207
  %438 = load i32, i32* %20, align 4
  %439 = load i32, i32* %15, align 4
  %440 = add i32 %438, %439
  %441 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %442 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %441, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = mul i32 %440, %447
  %449 = load i32, i32* %19, align 4
  %450 = load i32, i32* %16, align 4
  %451 = mul i32 %449, %450
  %452 = add i32 %448, %451
  %453 = load i32, i32* %13, align 4
  %454 = call i8* @DIV_ROUND_UP(i32 %452, i32 %453)
  %455 = ptrtoint i8* %454 to i32
  store i32 %455, i32* %17, align 4
  br label %456

456:                                              ; preds = %437, %342
  %457 = load i32, i32* %10, align 4
  %458 = load i32, i32* %18, align 4
  %459 = load i32, i32* %17, align 4
  %460 = add i32 %458, %459
  %461 = call i32 @max(i32 %457, i32 %460)
  store i32 %461, i32* %10, align 4
  br label %462

462:                                              ; preds = %456
  %463 = load i32, i32* %11, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %11, align 4
  br label %47

465:                                              ; preds = %47
  %466 = load i32, i32* %10, align 4
  %467 = load i32, i32* %13, align 4
  %468 = call i32 @mul_u32_u32(i32 %466, i32 %467)
  %469 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %470 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp sgt i32 %468, %472
  br i1 %473, label %474, label %485

474:                                              ; preds = %465
  %475 = load i32, i32* %10, align 4
  %476 = load i32, i32* %13, align 4
  %477 = call i32 @mul_u32_u32(i32 %475, i32 %476)
  %478 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %479 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %477, i32 %481)
  %483 = load i32, i32* @EINVAL, align 4
  %484 = sub nsw i32 0, %483
  store i32 %484, i32* %3, align 4
  br label %486

485:                                              ; preds = %465
  store i32 0, i32* %3, align 4
  br label %486

486:                                              ; preds = %485, %474, %195, %151, %78
  %487 = load i32, i32* %3, align 4
  ret i32 %487
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_framebuffer_plane_width(i32, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_framebuffer_plane_height(i32, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @intel_fb_offset_to_xy(i32*, i32*, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i64 @is_ccs_modifier(i32) #1

declare dso_local i32 @intel_tile_dims(%struct.drm_framebuffer*, i32, ...) #1

declare dso_local i64 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_compute_aligned_offset(%struct.drm_i915_private*, i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i32) #1

declare dso_local i32 @is_surface_linear(i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @drm_rect_rotate(%struct.drm_rect*, i32, i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @intel_adjust_tile_offset(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mul_u32_u32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
