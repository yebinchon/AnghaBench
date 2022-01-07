; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, %struct.TYPE_4__*, %struct.drm_plane_state* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_5__, i32, i32, i32, %struct.drm_framebuffer* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.drm_crtc_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported plane type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @ipu_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 2
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %20, align 8
  store %struct.drm_plane_state* %21, %struct.drm_plane_state** %6, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %8, align 8
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 4
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %9, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 4
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %31, align 8
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %10, align 8
  %33 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 129
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %39 = icmp ne %struct.drm_framebuffer* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %388

41:                                               ; preds = %2
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %388

49:                                               ; preds = %41
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %52, i32 %55)
  store %struct.drm_crtc_state* %56, %struct.drm_crtc_state** %7, align 8
  %57 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %58 = icmp ne %struct.drm_crtc_state* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %388

66:                                               ; preds = %49
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %68 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %69 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %70 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %67, %struct.drm_crtc_state* %68, i32 %69, i32 %70, i32 %71, i32 1)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %3, align 4
  br label %388

77:                                               ; preds = %66
  %78 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %79 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %388

83:                                               ; preds = %77
  %84 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %85 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %97 [
    i32 128, label %87
    i32 129, label %96
  ]

87:                                               ; preds = %83
  %88 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %89 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %88, i32 0, i32 1
  %90 = call i64 @drm_rect_width(i32* %89)
  %91 = icmp slt i64 %90, 13
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %388

95:                                               ; preds = %87
  br label %105

96:                                               ; preds = %83
  br label %105

97:                                               ; preds = %83
  %98 = load %struct.device*, %struct.device** %8, align 8
  %99 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %100 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_warn(%struct.device* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %388

105:                                              ; preds = %96, %95
  %106 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %107 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %106, i32 0, i32 1
  %108 = call i32 @drm_rect_height(i32* %107)
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %388

113:                                              ; preds = %105
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %115 = icmp ne %struct.drm_framebuffer* %114, null
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %118 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %117, i32 0, i32 1
  %119 = call i64 @drm_rect_width(i32* %118)
  %120 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %121 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %120, i32 0, i32 1
  %122 = call i64 @drm_rect_width(i32* %121)
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %140, label %124

124:                                              ; preds = %116
  %125 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %126 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %125, i32 0, i32 1
  %127 = call i32 @drm_rect_height(i32* %126)
  %128 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %129 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %128, i32 0, i32 1
  %130 = call i32 @drm_rect_height(i32* %129)
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %134 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %137 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = icmp ne %struct.TYPE_6__* %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132, %124, %116
  %141 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %142 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %132, %113
  %144 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %145 = call i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %144, i32 0)
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %11, align 8
  %147 = and i64 %146, 7
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %388

152:                                              ; preds = %143
  %153 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %154 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %161 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 16384
  br i1 %165, label %166, label %169

166:                                              ; preds = %159, %152
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %388

169:                                              ; preds = %159
  %170 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %171 = icmp ne %struct.drm_framebuffer* %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  %173 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %174 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %179 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %186 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %185, i32 0, i32 0
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %172, %169
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %387 [
    i32 135, label %193
    i32 132, label %193
    i32 134, label %193
    i32 131, label %193
    i32 133, label %193
    i32 130, label %193
    i32 140, label %242
    i32 139, label %242
    i32 138, label %342
    i32 143, label %342
    i32 137, label %342
    i32 142, label %342
    i32 136, label %342
    i32 141, label %342
  ]

193:                                              ; preds = %187, %187, %187, %187, %187, %187
  %194 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %195 = call i64 @drm_plane_state_to_vbo(%struct.drm_plane_state* %194)
  store i64 %195, i64* %13, align 8
  %196 = load i64, i64* %13, align 8
  %197 = and i64 %196, 7
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %193
  %200 = load i64, i64* %13, align 8
  %201 = icmp ugt i64 %200, 16777208
  br i1 %201, label %202, label %205

202:                                              ; preds = %199, %193
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %388

205:                                              ; preds = %199
  %206 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %207 = icmp ne %struct.drm_framebuffer* %206, null
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %210 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %213 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %212, i32 0, i32 1
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = icmp eq %struct.TYPE_6__* %211, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %208
  %217 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %218 = call i64 @drm_plane_state_to_vbo(%struct.drm_plane_state* %217)
  store i64 %218, i64* %15, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* %15, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %224 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %216
  br label %226

226:                                              ; preds = %225, %208, %205
  %227 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %228 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %233 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %231, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %226
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %388

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %187, %187, %241
  %243 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %244 = call i64 @drm_plane_state_to_ubo(%struct.drm_plane_state* %243)
  store i64 %244, i64* %12, align 8
  %245 = load i64, i64* %12, align 8
  %246 = and i64 %245, 7
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %242
  %249 = load i64, i64* %12, align 8
  %250 = icmp ugt i64 %249, 16777208
  br i1 %250, label %251, label %254

251:                                              ; preds = %248, %242
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %3, align 4
  br label %388

254:                                              ; preds = %248
  %255 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %256 = icmp ne %struct.drm_framebuffer* %255, null
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %259 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %258, i32 0, i32 1
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %262 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %261, i32 0, i32 1
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = icmp eq %struct.TYPE_6__* %260, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %257
  %266 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %267 = call i64 @drm_plane_state_to_ubo(%struct.drm_plane_state* %266)
  store i64 %267, i64* %14, align 8
  %268 = load i64, i64* %12, align 8
  %269 = load i64, i64* %14, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %273 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %272, i32 0, i32 0
  store i32 1, i32* %273, align 4
  br label %274

274:                                              ; preds = %271, %265
  br label %275

275:                                              ; preds = %274, %257, %254
  %276 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %277 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 1
  br i1 %281, label %289, label %282

282:                                              ; preds = %275
  %283 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %284 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp sgt i32 %287, 16384
  br i1 %288, label %289, label %292

289:                                              ; preds = %282, %275
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %3, align 4
  br label %388

292:                                              ; preds = %282
  %293 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %294 = icmp ne %struct.drm_framebuffer* %293, null
  br i1 %294, label %295, label %310

295:                                              ; preds = %292
  %296 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %297 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %302 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %300, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %295
  %308 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %309 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %308, i32 0, i32 0
  store i32 1, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %295, %292
  %311 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %312 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = ashr i32 %314, 16
  %316 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %317 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %316, i32 0, i32 1
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %320, 1
  %322 = and i32 %315, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %338, label %324

324:                                              ; preds = %310
  %325 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %326 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 16
  %330 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %331 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %330, i32 0, i32 1
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %334, 1
  %336 = and i32 %329, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %324, %310
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %388

341:                                              ; preds = %324
  br label %387

342:                                              ; preds = %187, %187, %187, %187, %187, %187
  %343 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %344 = call i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %343, i32 1)
  store i64 %344, i64* %16, align 8
  %345 = load i64, i64* %16, align 8
  %346 = and i64 %345, 7
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load i32, i32* @EINVAL, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %3, align 4
  br label %388

351:                                              ; preds = %342
  %352 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %353 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp slt i32 %356, 1
  br i1 %357, label %365, label %358

358:                                              ; preds = %351
  %359 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %360 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  %363 = load i32, i32* %362, align 4
  %364 = icmp sgt i32 %363, 16384
  br i1 %364, label %365, label %368

365:                                              ; preds = %358, %351
  %366 = load i32, i32* @EINVAL, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %388

368:                                              ; preds = %358
  %369 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %370 = icmp ne %struct.drm_framebuffer* %369, null
  br i1 %370, label %371, label %386

371:                                              ; preds = %368
  %372 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %373 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %378 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %376, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %371
  %384 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %385 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %384, i32 0, i32 0
  store i32 1, i32* %385, align 4
  br label %386

386:                                              ; preds = %383, %371, %368
  br label %387

387:                                              ; preds = %187, %386, %341
  store i32 0, i32* %3, align 4
  br label %388

388:                                              ; preds = %387, %365, %348, %338, %289, %251, %238, %202, %166, %149, %110, %97, %92, %82, %75, %63, %46, %40
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i64 @drm_rect_width(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i64 @drm_plane_state_to_eba(%struct.drm_plane_state*, i32) #1

declare dso_local i64 @drm_plane_state_to_vbo(%struct.drm_plane_state*) #1

declare dso_local i64 @drm_plane_state_to_ubo(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
