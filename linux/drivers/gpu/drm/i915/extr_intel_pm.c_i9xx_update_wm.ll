; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i9xx_update_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i9xx_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_watermark_params = type { i32, i32, i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.drm_i915_private.0*, i32)* }
%struct.drm_i915_private.0 = type opaque
%struct.drm_i915_gem_object = type { i32 }

@i945_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@i915_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@i830_a_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@PLANE_A = common dso_local global i32 0, align 4
@pessimal_latency_ns = common dso_local global i32 0, align 4
@i830_bc_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@PLANE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FIFO watermarks - A: %d, B: %d\0A\00", align 1
@i9xx_update_wm.sr_latency_ns = internal constant i32 6000, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"self-refresh entries: %d\0A\00", align 1
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_FIFO_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\0A\00", align 1
@FW_BLC = common dso_local global i32 0, align 4
@FW_BLC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @i9xx_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_update_wm(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_watermark_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.intel_crtc*, align 8
  %14 = alloca %struct.drm_display_mode*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca %struct.drm_framebuffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.drm_i915_gem_object*, align 8
  %21 = alloca %struct.drm_display_mode*, align 8
  %22 = alloca %struct.drm_framebuffer*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.drm_i915_private* @to_i915(i32 %31)
  store %struct.drm_i915_private* %32, %struct.drm_i915_private** %3, align 8
  store i32 1, i32* %8, align 4
  store %struct.intel_crtc* null, %struct.intel_crtc** %13, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i64 @IS_I945GM(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store %struct.intel_watermark_params* @i945_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i64 @IS_GEN(%struct.drm_i915_private* %38, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store %struct.intel_watermark_params* @i915_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %43

42:                                               ; preds = %37
  store %struct.intel_watermark_params* @i830_a_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (%struct.drm_i915_private.0*, i32)*, i32 (%struct.drm_i915_private.0*, i32)** %47, align 8
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = bitcast %struct.drm_i915_private* %49 to %struct.drm_i915_private.0*
  %51 = load i32, i32* @PLANE_A, align 4
  %52 = call i32 %48(%struct.drm_i915_private.0* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = load i32, i32* @PLANE_A, align 4
  %55 = call %struct.intel_crtc* @intel_get_crtc_for_plane(%struct.drm_i915_private* %53, i32 %54)
  store %struct.intel_crtc* %55, %struct.intel_crtc** %12, align 8
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %57 = call i64 @intel_crtc_active(%struct.intel_crtc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %44
  %60 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %61 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.drm_display_mode* %64, %struct.drm_display_mode** %14, align 8
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %71, align 8
  store %struct.drm_framebuffer* %72, %struct.drm_framebuffer** %15, align 8
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = call i64 @IS_GEN(%struct.drm_i915_private* %73, i32 2)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  store i32 4, i32* %16, align 4
  br label %85

77:                                               ; preds = %59
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %77, %76
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @pessimal_latency_ns, align 4
  %93 = call i32 @intel_calculate_wm(i32 %88, %struct.intel_watermark_params* %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  store %struct.intel_crtc* %94, %struct.intel_crtc** %13, align 8
  br label %113

95:                                               ; preds = %44
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %98 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %104 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp sgt i64 %102, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %95
  %109 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %110 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %108, %95
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %115 = call i64 @IS_GEN(%struct.drm_i915_private* %114, i32 2)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store %struct.intel_watermark_params* @i830_bc_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %118

118:                                              ; preds = %117, %113
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32 (%struct.drm_i915_private.0*, i32)*, i32 (%struct.drm_i915_private.0*, i32)** %121, align 8
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %124 = bitcast %struct.drm_i915_private* %123 to %struct.drm_i915_private.0*
  %125 = load i32, i32* @PLANE_B, align 4
  %126 = call i32 %122(%struct.drm_i915_private.0* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = load i32, i32* @PLANE_B, align 4
  %129 = call %struct.intel_crtc* @intel_get_crtc_for_plane(%struct.drm_i915_private* %127, i32 %128)
  store %struct.intel_crtc* %129, %struct.intel_crtc** %12, align 8
  %130 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %131 = call i64 @intel_crtc_active(%struct.intel_crtc* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %118
  %134 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %135 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store %struct.drm_display_mode* %138, %struct.drm_display_mode** %17, align 8
  %139 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %140 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %145, align 8
  store %struct.drm_framebuffer* %146, %struct.drm_framebuffer** %18, align 8
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = call i64 @IS_GEN(%struct.drm_i915_private* %147, i32 2)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  store i32 4, i32* %19, align 4
  br label %159

151:                                              ; preds = %133
  %152 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %153 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %151, %150
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* @pessimal_latency_ns, align 4
  %167 = call i32 @intel_calculate_wm(i32 %162, %struct.intel_watermark_params* %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %169 = icmp eq %struct.intel_crtc* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  store %struct.intel_crtc* %171, %struct.intel_crtc** %13, align 8
  br label %173

172:                                              ; preds = %159
  store %struct.intel_crtc* null, %struct.intel_crtc** %13, align 8
  br label %173

173:                                              ; preds = %172, %170
  br label %192

174:                                              ; preds = %118
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %177 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %183 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp sgt i64 %181, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %189 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %187, %174
  br label %192

192:                                              ; preds = %191, %173
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %197 = call i64 @IS_I915GM(%struct.drm_i915_private* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %201 = icmp ne %struct.intel_crtc* %200, null
  br i1 %201, label %202, label %217

202:                                              ; preds = %199
  %203 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %204 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %209, align 8
  %211 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %210)
  store %struct.drm_i915_gem_object* %211, %struct.drm_i915_gem_object** %20, align 8
  %212 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %20, align 8
  %213 = call i32 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %202
  store %struct.intel_crtc* null, %struct.intel_crtc** %13, align 8
  br label %216

216:                                              ; preds = %215, %202
  br label %217

217:                                              ; preds = %216, %199, %192
  store i32 2, i32* %7, align 4
  %218 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %219 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %218, i32 0)
  %220 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %221 = call i64 @HAS_FW_BLC(%struct.drm_i915_private* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %309

223:                                              ; preds = %217
  %224 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %225 = icmp ne %struct.intel_crtc* %224, null
  br i1 %225, label %226, label %309

226:                                              ; preds = %223
  %227 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %228 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %227, i32 0, i32 0
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  store %struct.drm_display_mode* %231, %struct.drm_display_mode** %21, align 8
  %232 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %233 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %238, align 8
  store %struct.drm_framebuffer* %239, %struct.drm_framebuffer** %22, align 8
  %240 = load %struct.drm_display_mode*, %struct.drm_display_mode** %21, align 8
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %23, align 4
  %243 = load %struct.drm_display_mode*, %struct.drm_display_mode** %21, align 8
  %244 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %24, align 4
  %246 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %247 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %246, i32 0, i32 0
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %25, align 4
  %251 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %252 = call i64 @IS_I915GM(%struct.drm_i915_private* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %226
  %255 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %256 = call i64 @IS_I945GM(%struct.drm_i915_private* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %226
  store i32 4, i32* %26, align 4
  br label %267

259:                                              ; preds = %254
  %260 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  %261 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %260, i32 0, i32 0
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %26, align 4
  br label %267

267:                                              ; preds = %259, %258
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* %25, align 4
  %271 = load i32, i32* %26, align 4
  %272 = call i32 @intel_wm_method2(i32 %268, i32 %269, i32 %270, i32 %271, i32 60)
  store i32 %272, i32* %27, align 4
  %273 = load i32, i32* %27, align 4
  %274 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %275 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @DIV_ROUND_UP(i32 %273, i32 %276)
  store i32 %277, i32* %27, align 4
  %278 = load i32, i32* %27, align 4
  %279 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %278)
  %280 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %281 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %27, align 4
  %284 = sub nsw i32 %282, %283
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %267
  store i32 1, i32* %8, align 4
  br label %288

288:                                              ; preds = %287, %267
  %289 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %290 = call i64 @IS_I945G(%struct.drm_i915_private* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %294 = call i64 @IS_I945GM(%struct.drm_i915_private* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %292, %288
  %297 = load i32, i32* @FW_BLC_SELF, align 4
  %298 = load i32, i32* @FW_BLC_SELF_FIFO_MASK, align 4
  %299 = load i32, i32* %8, align 4
  %300 = and i32 %299, 255
  %301 = or i32 %298, %300
  %302 = call i32 @I915_WRITE(i32 %297, i32 %301)
  br label %308

303:                                              ; preds = %292
  %304 = load i32, i32* @FW_BLC_SELF, align 4
  %305 = load i32, i32* %8, align 4
  %306 = and i32 %305, 63
  %307 = call i32 @I915_WRITE(i32 %304, i32 %306)
  br label %308

308:                                              ; preds = %303, %296
  br label %309

309:                                              ; preds = %308, %223, %217
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %8, align 4
  %314 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %310, i32 %311, i32 %312, i32 %313)
  %315 = load i32, i32* %11, align 4
  %316 = and i32 %315, 63
  %317 = shl i32 %316, 16
  %318 = load i32, i32* %10, align 4
  %319 = and i32 %318, 63
  %320 = or i32 %317, %319
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %7, align 4
  %322 = and i32 %321, 31
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %5, align 4
  %324 = or i32 %323, 16777216
  %325 = or i32 %324, 256
  store i32 %325, i32* %5, align 4
  %326 = load i32, i32* %6, align 4
  %327 = or i32 %326, 256
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* @FW_BLC, align 4
  %329 = load i32, i32* %5, align 4
  %330 = call i32 @I915_WRITE(i32 %328, i32 %329)
  %331 = load i32, i32* @FW_BLC2, align 4
  %332 = load i32, i32* %6, align 4
  %333 = call i32 @I915_WRITE(i32 %331, i32 %332)
  %334 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %335 = icmp ne %struct.intel_crtc* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %309
  %337 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %338 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %337, i32 1)
  br label %339

339:                                              ; preds = %336, %309
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_crtc_active(%struct.intel_crtc*) #1

declare dso_local i32 @intel_calculate_wm(i32, %struct.intel_watermark_params*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_FW_BLC(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_wm_method2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
