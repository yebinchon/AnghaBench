; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_put_image_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_put_image_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_intel_overlay_put_image = type { i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.drm_i915_private = type { %struct.intel_overlay* }
%struct.intel_overlay = type { i32, i32, %struct.intel_crtc* }
%struct.intel_crtc = type { %struct.TYPE_4__*, %struct.intel_overlay* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"userspace bug: no overlay\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@I915_OVERLAY_ENABLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"buffer used for overlay image can not be tiled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PFIT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_overlay_put_image_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_intel_overlay_put_image*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_overlay*, align 8
  %11 = alloca %struct.drm_crtc*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.drm_i915_gem_object*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_intel_overlay_put_image*
  store %struct.drm_intel_overlay_put_image* %16, %struct.drm_intel_overlay_put_image** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = load %struct.intel_overlay*, %struct.intel_overlay** %20, align 8
  store %struct.intel_overlay* %21, %struct.intel_overlay** %10, align 8
  %22 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %23 = icmp ne %struct.intel_overlay* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %236

28:                                               ; preds = %3
  %29 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %30 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I915_OVERLAY_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = call i32 @drm_modeset_lock_all(%struct.drm_device* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %42 = call i32 @intel_overlay_switch_off(%struct.intel_overlay* %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %4, align 4
  br label %236

49:                                               ; preds = %28
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %52 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %53 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %50, %struct.drm_file* %51, i32 %54)
  store %struct.drm_crtc* %55, %struct.drm_crtc** %11, align 8
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %57 = icmp ne %struct.drm_crtc* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %236

61:                                               ; preds = %49
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %63 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %62)
  store %struct.intel_crtc* %63, %struct.intel_crtc** %12, align 8
  %64 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %65 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %66 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %64, i32 %67)
  store %struct.drm_i915_gem_object* %68, %struct.drm_i915_gem_object** %13, align 8
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %70 = icmp ne %struct.drm_i915_gem_object* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %236

74:                                               ; preds = %61
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = call i32 @drm_modeset_lock_all(%struct.drm_device* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %81 = call i64 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %227

87:                                               ; preds = %74
  %88 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %89 = call i32 @intel_overlay_recover_from_interrupt(%struct.intel_overlay* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %227

93:                                               ; preds = %87
  %94 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %95 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %94, i32 0, i32 2
  %96 = load %struct.intel_crtc*, %struct.intel_crtc** %95, align 8
  %97 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %98 = icmp ne %struct.intel_crtc* %96, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %93
  %100 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %101 = call i32 @intel_overlay_switch_off(%struct.intel_overlay* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %227

105:                                              ; preds = %99
  %106 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %107 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %108 = call i32 @check_overlay_possible_on_crtc(%struct.intel_overlay* %106, %struct.intel_crtc* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %227

112:                                              ; preds = %105
  %113 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %114 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %115 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %114, i32 0, i32 2
  store %struct.intel_crtc* %113, %struct.intel_crtc** %115, align 8
  %116 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %117 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %118 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %117, i32 0, i32 1
  store %struct.intel_overlay* %116, %struct.intel_overlay** %118, align 8
  %119 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %120 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 1024
  br i1 %124, label %125, label %140

125:                                              ; preds = %112
  %126 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %127 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PFIT_ENABLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %137 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %139 = call i32 @update_pfit_vscale_ratio(%struct.intel_overlay* %138)
  br label %143

140:                                              ; preds = %125, %112
  %141 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %142 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143, %93
  %145 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %146 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %147 = call i32 @check_overlay_dst(%struct.intel_overlay* %145, %struct.drm_intel_overlay_put_image* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %227

151:                                              ; preds = %144
  %152 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %153 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %151
  %157 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %158 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 12
  %161 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %162 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %160, %163
  %165 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %166 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %168 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = shl i32 %169, 12
  %171 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %172 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %170, %173
  %175 = add nsw i32 %174, 1
  %176 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %177 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %156, %151
  %179 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %180 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %183 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %181, %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %178
  %187 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %188 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %191 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %189, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %186, %178
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %14, align 4
  br label %227

197:                                              ; preds = %186
  %198 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %199 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %200 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %201 = call i32 @check_overlay_src(%struct.drm_i915_private* %198, %struct.drm_intel_overlay_put_image* %199, %struct.drm_i915_gem_object* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %227

205:                                              ; preds = %197
  %206 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %207 = call i32 @check_overlay_scaling(%struct.drm_intel_overlay_put_image* %206)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %227

211:                                              ; preds = %205
  %212 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %213 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %214 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %215 = call i32 @intel_overlay_do_put_image(%struct.intel_overlay* %212, %struct.drm_i915_gem_object* %213, %struct.drm_intel_overlay_put_image* %214)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %227

219:                                              ; preds = %211
  %220 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %221 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %224 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %223)
  %225 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %226 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %225)
  store i32 0, i32* %4, align 4
  br label %236

227:                                              ; preds = %218, %210, %204, %194, %150, %111, %104, %92, %83
  %228 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %229 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %228, i32 0, i32 0
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %232 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %231)
  %233 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %234 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %233)
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %227, %219, %71, %58, %35, %24
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_overlay_switch_off(%struct.intel_overlay*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_overlay_recover_from_interrupt(%struct.intel_overlay*) #1

declare dso_local i32 @check_overlay_possible_on_crtc(%struct.intel_overlay*, %struct.intel_crtc*) #1

declare dso_local i32 @update_pfit_vscale_ratio(%struct.intel_overlay*) #1

declare dso_local i32 @check_overlay_dst(%struct.intel_overlay*, %struct.drm_intel_overlay_put_image*) #1

declare dso_local i32 @check_overlay_src(%struct.drm_i915_private*, %struct.drm_intel_overlay_put_image*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @check_overlay_scaling(%struct.drm_intel_overlay_put_image*) #1

declare dso_local i32 @intel_overlay_do_put_image(%struct.intel_overlay*, %struct.drm_i915_gem_object*, %struct.drm_intel_overlay_put_image*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
