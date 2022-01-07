; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_framebuffer = type { i32, %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, i32*, %struct.TYPE_4__**, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i64*, i64*, i32*, i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_FB_MODIFIERS = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"tiling_mode doesn't match fb modifier\0A\00", align 1
@I915_TILING_X = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_X_TILED = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No Y tiling for legacy addfb\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"unsupported pixel format %s / modifier 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"tiling_mode must match fb modifier exactly on gen2/3\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s pitch (%u) must be at most %d\0A\00", align 1
@DRM_FORMAT_MOD_LINEAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"tiled\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"pitch (%d) must match tiling stride (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"bad plane %d handle\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"plane %d pitch (%d) must be at least %u byte aligned\0A\00", align 1
@intel_fb_funcs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"framebuffer init failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_framebuffer*, %struct.drm_i915_gem_object*, %struct.drm_mode_fb_cmd2*)* @intel_framebuffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_framebuffer_init(%struct.intel_framebuffer* %0, %struct.drm_i915_gem_object* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_framebuffer*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_format_name_buf, align 4
  %16 = alloca i32, align 4
  store %struct.intel_framebuffer* %0, %struct.intel_framebuffer** %5, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %23 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %22, i32 0, i32 1
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %9, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %13, align 4
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %27 = call i32 @intel_frontbuffer_get(%struct.drm_i915_gem_object* %26)
  %28 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %29 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %31 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %302

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %39 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %38)
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %41 = call i32 @i915_gem_object_get_tiling(%struct.drm_i915_gem_object* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %43 = call i32 @i915_gem_object_get_stride(%struct.drm_i915_gem_object* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %45 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %44)
  %46 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @I915_TILING_NONE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %59 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @intel_fb_modifier_to_tiling(i32 %62)
  %64 = icmp ne i32 %57, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %296

67:                                               ; preds = %56, %52
  br label %86

68:                                               ; preds = %37
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @I915_TILING_X, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @I915_FORMAT_MOD_X_TILED, align 4
  %74 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %75 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  br label %85

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @I915_TILING_Y, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %296

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %88 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %87, i32 0, i32 0
  %89 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %90 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %93 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @drm_any_plane_has_format(i32* %88, i32 %91, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %86
  %100 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %101 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @drm_get_format_name(i32 %102, %struct.drm_format_name_buf* %15)
  %104 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %105 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %108)
  br label %296

110:                                              ; preds = %86
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %112 = call i32 @INTEL_GEN(%struct.drm_i915_private* %111)
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %117 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @intel_fb_modifier_to_tiling(i32 %120)
  %122 = icmp ne i32 %115, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %296

125:                                              ; preds = %114, %110
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %127 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %128 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %131 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @intel_fb_max_stride(%struct.drm_i915_private* %126, i32 %129, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %137 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %125
  %144 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %145 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DRM_FORMAT_MOD_LINEAR, align 4
  %150 = icmp ne i32 %148, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %153 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %154 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %157, i32 %158)
  br label %296

160:                                              ; preds = %125
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @I915_TILING_NONE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %166 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %174 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %177, i32 %178)
  br label %296

180:                                              ; preds = %164, %160
  %181 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %182 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %296

188:                                              ; preds = %180
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 0
  %191 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %192 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %193 = call i32 @drm_helper_mode_fill_fb_struct(i32* %190, %struct.drm_framebuffer* %191, %struct.drm_mode_fb_cmd2* %192)
  store i32 0, i32* %14, align 4
  br label %194

194:                                              ; preds = %275, %188
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %197 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %196, i32 0, i32 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %195, %200
  br i1 %201, label %202, label %278

202:                                              ; preds = %194
  %203 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %204 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %203, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %211 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %210, i32 0, i32 3
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %209, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %202
  %217 = load i32, i32* %14, align 4
  %218 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  br label %296

219:                                              ; preds = %202
  %220 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @intel_fb_stride_alignment(%struct.drm_framebuffer* %220, i32 %221)
  store i32 %222, i32* %16, align 4
  %223 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %224 = call i64 @IS_GEN(%struct.drm_i915_private* %223, i32 9)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %219
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %231 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 3840
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %236 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i64 @is_ccs_modifier(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* %16, align 4
  %242 = mul nsw i32 %241, 4
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %240, %234, %229, %226, %219
  %244 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %245 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %16, align 4
  %252 = sub nsw i32 %251, 1
  %253 = and i32 %250, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %243
  %256 = load i32, i32* %14, align 4
  %257 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %258 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %256, i32 %263, i32 %264)
  br label %296

266:                                              ; preds = %243
  %267 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %268 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %267, i32 0, i32 0
  %269 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %270 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %269, i32 0, i32 2
  %271 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %271, i64 %273
  store %struct.TYPE_4__* %268, %struct.TYPE_4__** %274, align 8
  br label %275

275:                                              ; preds = %266
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %194

278:                                              ; preds = %194
  %279 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %280 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %281 = call i32 @intel_fill_fb_info(%struct.drm_i915_private* %279, %struct.drm_framebuffer* %280)
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %296

285:                                              ; preds = %278
  %286 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %287 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %286, i32 0, i32 0
  %288 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %289 = call i32 @drm_framebuffer_init(i32* %287, %struct.drm_framebuffer* %288, i32* @intel_fb_funcs)
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %285
  %293 = load i32, i32* %13, align 4
  %294 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %293)
  br label %296

295:                                              ; preds = %285
  store i32 0, i32* %4, align 4
  br label %302

296:                                              ; preds = %292, %284, %255, %216, %187, %172, %143, %123, %99, %82, %65
  %297 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %5, align 8
  %298 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @intel_frontbuffer_put(i32 %299)
  %301 = load i32, i32* %13, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %296, %295, %34
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_frontbuffer_get(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_get_tiling(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_get_stride(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_fb_modifier_to_tiling(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_any_plane_has_format(i32*, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fb_max_stride(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(i32*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @intel_fb_stride_alignment(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @is_ccs_modifier(i32) #1

declare dso_local i32 @intel_fill_fb_info(%struct.drm_i915_private*, %struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_init(i32*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_frontbuffer_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
