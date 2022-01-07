; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_check_overlay_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_check_overlay_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_intel_overlay_put_image = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IMAGE_MAX_HEIGHT_LEGACY = common dso_local global i32 0, align 4
@IMAGE_MAX_WIDTH_LEGACY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMAGE_MAX_HEIGHT = common dso_local global i32 0, align 4
@IMAGE_MAX_WIDTH = common dso_local global i32 0, align 4
@N_VERT_Y_TAPS = common dso_local global i32 0, align 4
@N_HORIZ_Y_TAPS = common dso_local global i32 0, align 4
@I915_OVERLAY_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_intel_overlay_put_image*, %struct.drm_i915_gem_object*)* @check_overlay_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_overlay_src(%struct.drm_i915_private* %0, %struct.drm_intel_overlay_put_image* %1, %struct.drm_i915_gem_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_intel_overlay_put_image*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.drm_intel_overlay_put_image* %1, %struct.drm_intel_overlay_put_image** %6, align 8
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %7, align 8
  %13 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %14 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uv_hsubsampling(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %18 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @uv_vsubsampling(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = call i64 @IS_I845G(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = call i64 @IS_I830(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24, %3
  %29 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %30 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IMAGE_MAX_HEIGHT_LEGACY, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %36 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IMAGE_MAX_WIDTH_LEGACY, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %326

43:                                               ; preds = %34
  br label %60

44:                                               ; preds = %24
  %45 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %46 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IMAGE_MAX_HEIGHT, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %52 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IMAGE_MAX_WIDTH, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %326

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %62 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @N_VERT_Y_TAPS, align 4
  %65 = mul nsw i32 %64, 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %69 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @N_HORIZ_Y_TAPS, align 4
  %72 = mul nsw i32 %71, 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %60
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %326

77:                                               ; preds = %67
  %78 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %79 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I915_OVERLAY_TYPE_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %128 [
    i32 130, label %83
    i32 129, label %86
    i32 128, label %118
  ]

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %326

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %326

92:                                               ; preds = %86
  %93 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %94 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @packed_depth_bytes(i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %326

101:                                              ; preds = %92
  %102 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %103 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %105 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %104, i32 0, i32 7
  store i32 0, i32* %105, align 4
  %106 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %107 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %106, i32 0, i32 6
  store i32 0, i32* %107, align 4
  %108 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %109 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = srem i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %326

117:                                              ; preds = %101
  br label %131

118:                                              ; preds = %77
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121, %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %326

127:                                              ; preds = %121
  br label %131

128:                                              ; preds = %77
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %326

131:                                              ; preds = %127, %117
  %132 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %133 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = srem i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %326

141:                                              ; preds = %131
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %143 = call i64 @IS_I830(%struct.drm_i915_private* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %147 = call i64 @IS_I845G(%struct.drm_i915_private* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  store i32 255, i32* %10, align 4
  br label %151

150:                                              ; preds = %145
  store i32 63, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %149
  %152 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %153 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %160 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158, %151
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %326

168:                                              ; preds = %158
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %170 = call i64 @IS_GEN(%struct.drm_i915_private* %169, i32 4)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %174 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, 512
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %326

180:                                              ; preds = %172, %168
  %181 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %182 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @I915_OVERLAY_TYPE_MASK, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 128
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 4096, i32 8192
  store i32 %188, i32* %12, align 4
  %189 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %190 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %199, label %194

194:                                              ; preds = %180
  %195 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %196 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %197, 2048
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %180
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %326

202:                                              ; preds = %194
  %203 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %204 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @I915_OVERLAY_TYPE_MASK, align 4
  %207 = and i32 %205, %206
  switch i32 %207, label %325 [
    i32 130, label %208
    i32 129, label %208
    i32 128, label %245
  ]

208:                                              ; preds = %202, %202
  %209 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %210 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %213 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @packed_width_bytes(i32 %211, i32 %214)
  %216 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %217 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %208
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %4, align 4
  br label %326

223:                                              ; preds = %208
  %224 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %225 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %228 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %226, %229
  store i32 %230, i32* %12, align 4
  %231 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %232 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %233, %234
  %236 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %237 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %235, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %223
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %326

244:                                              ; preds = %223
  br label %325

245:                                              ; preds = %202
  %246 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %247 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %250 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %245
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  br label %326

256:                                              ; preds = %245
  %257 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %258 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %8, align 4
  %261 = sdiv i32 %259, %260
  %262 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %263 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %261, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %256
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  br label %326

269:                                              ; preds = %256
  %270 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %271 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %274 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %272, %275
  store i32 %276, i32* %12, align 4
  %277 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %278 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %279, %280
  %282 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %283 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp sgt i32 %281, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %269
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %4, align 4
  br label %326

290:                                              ; preds = %269
  %291 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %292 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %295 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %9, align 4
  %298 = sdiv i32 %296, %297
  %299 = mul nsw i32 %293, %298
  store i32 %299, i32* %12, align 4
  %300 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %301 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %302, %303
  %305 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %306 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp sgt i32 %304, %308
  br i1 %309, label %321, label %310

310:                                              ; preds = %290
  %311 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %6, align 8
  %312 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %313, %314
  %316 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %317 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %315, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %310, %290
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %4, align 4
  br label %326

324:                                              ; preds = %310
  br label %325

325:                                              ; preds = %202, %324, %244
  store i32 0, i32* %4, align 4
  br label %326

326:                                              ; preds = %325, %321, %287, %266, %253, %241, %220, %199, %177, %165, %138, %128, %124, %114, %99, %89, %83, %74, %56, %40
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @uv_hsubsampling(i32) #1

declare dso_local i32 @uv_vsubsampling(i32) #1

declare dso_local i64 @IS_I845G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @packed_depth_bytes(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @packed_width_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
