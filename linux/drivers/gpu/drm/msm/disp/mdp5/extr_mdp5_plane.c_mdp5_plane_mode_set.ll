; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.drm_rect = type { i64, i64 }
%struct.mdp5_hw_pipe = type { i32, i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp_format = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.phase_step = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pixel_ext = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: FB[%u] %u,%u,%u,%u -> CRTC[%u] %d,%d,%u,%u\00", align 1
@MDP_PIPE_CAP_SW_PIX_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"scale config = %x\00", align 1
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_rect*, %struct.drm_rect*)* @mdp5_plane_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_plane_mode_set(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3, %struct.drm_rect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_rect*, align 8
  %11 = alloca %struct.drm_rect*, align 8
  %12 = alloca %struct.drm_plane_state*, align 8
  %13 = alloca %struct.mdp5_hw_pipe*, align 8
  %14 = alloca %struct.mdp5_kms*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mdp5_hw_pipe*, align 8
  %17 = alloca %struct.mdp_format*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.phase_step, align 4
  %21 = alloca %struct.pixel_ext, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %10, align 8
  store %struct.drm_rect* %4, %struct.drm_rect** %11, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 1
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %40, align 8
  store %struct.drm_plane_state* %41, %struct.drm_plane_state** %12, align 8
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %43 = call %struct.TYPE_14__* @to_mdp5_plane_state(%struct.drm_plane_state* %42)
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %44, align 8
  store %struct.mdp5_hw_pipe* %45, %struct.mdp5_hw_pipe** %13, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %47 = call %struct.mdp5_kms* @get_kms(%struct.drm_plane* %46)
  store %struct.mdp5_kms* %47, %struct.mdp5_kms** %14, align 8
  %48 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %13, align 8
  %49 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  store i64 0, i64* %19, align 8
  %51 = bitcast %struct.phase_step* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 12, i1 false)
  %52 = bitcast %struct.pixel_ext* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 20, i1 false)
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @pipe2nclients(i32 %59)
  %61 = icmp sgt i64 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %5
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %291

68:                                               ; preds = %5
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %70 = call i32 @msm_framebuffer_format(%struct.drm_framebuffer* %69)
  %71 = call %struct.mdp_format* @to_mdp_format(i32 %70)
  store %struct.mdp_format* %71, %struct.mdp_format** %17, align 8
  %72 = load %struct.mdp_format*, %struct.mdp_format** %17, align 8
  %73 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %24, align 8
  %76 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %77 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %32, align 8
  %79 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %80 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %33, align 8
  %82 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %83 = call i8* @drm_rect_width(%struct.drm_rect* %82)
  %84 = ptrtoint i8* %83 to i64
  store i64 %84, i64* %34, align 8
  %85 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %86 = call i8* @drm_rect_height(%struct.drm_rect* %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %35, align 8
  %88 = load %struct.drm_rect*, %struct.drm_rect** %11, align 8
  %89 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %28, align 4
  %92 = load %struct.drm_rect*, %struct.drm_rect** %11, align 8
  %93 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %29, align 4
  %96 = load %struct.drm_rect*, %struct.drm_rect** %11, align 8
  %97 = call i8* @drm_rect_width(%struct.drm_rect* %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %30, align 4
  %99 = load %struct.drm_rect*, %struct.drm_rect** %11, align 8
  %100 = call i8* @drm_rect_height(%struct.drm_rect* %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %31, align 4
  %102 = load i64, i64* %32, align 8
  %103 = ashr i64 %102, 16
  store i64 %103, i64* %32, align 8
  %104 = load i64, i64* %33, align 8
  %105 = ashr i64 %104, 16
  store i64 %105, i64* %33, align 8
  %106 = load i64, i64* %34, align 8
  %107 = ashr i64 %106, 16
  store i64 %107, i64* %34, align 8
  %108 = load i64, i64* %35, align 8
  %109 = ashr i64 %108, 16
  store i64 %109, i64* %35, align 8
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %34, align 8
  %114 = call i64 @min(i32 %112, i64 %113)
  store i64 %114, i64* %36, align 8
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %35, align 8
  %119 = call i64 @min(i32 %117, i64 %118)
  store i64 %119, i64* %37, align 8
  %120 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %121 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %125 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %34, align 8
  %131 = load i64, i64* %35, align 8
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %133 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %29, align 4
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %31, align 4
  %140 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %123, i32 %127, i64 %128, i64 %129, i64 %130, i64 %131, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %142 = call %struct.TYPE_14__* @to_mdp5_plane_state(%struct.drm_plane_state* %141)
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %143, align 8
  store %struct.mdp5_hw_pipe* %144, %struct.mdp5_hw_pipe** %16, align 8
  %145 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %16, align 8
  %146 = icmp ne %struct.mdp5_hw_pipe* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %68
  %148 = load i32, i32* %30, align 4
  %149 = udiv i32 %148, 2
  store i32 %149, i32* %30, align 4
  %150 = load i64, i64* %34, align 8
  %151 = sdiv i64 %150, 2
  store i64 %151, i64* %34, align 8
  %152 = load i64, i64* %36, align 8
  %153 = sdiv i64 %152, 2
  store i64 %153, i64* %36, align 8
  br label %154

154:                                              ; preds = %147, %68
  %155 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %34, align 8
  %158 = load i32, i32* %30, align 4
  %159 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %20, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @calc_scalex_steps(%struct.drm_plane* %155, i64 %156, i64 %157, i32 %158, i32 %160)
  store i32 %161, i32* %38, align 4
  %162 = load i32, i32* %38, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %38, align 4
  store i32 %165, i32* %6, align 4
  br label %291

166:                                              ; preds = %154
  %167 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %35, align 8
  %170 = load i32, i32* %31, align 4
  %171 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %20, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @calc_scaley_steps(%struct.drm_plane* %167, i64 %168, i64 %169, i32 %170, i32 %172)
  store i32 %173, i32* %38, align 4
  %174 = load i32, i32* %38, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %38, align 4
  store i32 %177, i32* %6, align 4
  br label %291

178:                                              ; preds = %166
  %179 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %13, align 8
  %180 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MDP_PIPE_CAP_SW_PIX_EXT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %178
  %186 = load %struct.mdp_format*, %struct.mdp_format** %17, align 8
  %187 = load i64, i64* %34, align 8
  %188 = load i32, i32* %30, align 4
  %189 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %20, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %21, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %21, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @calc_pixel_ext(%struct.mdp_format* %186, i64 %187, i32 %188, i32 %190, i32 %192, i32 %194, i32 1)
  %196 = load %struct.mdp_format*, %struct.mdp_format** %17, align 8
  %197 = load i64, i64* %35, align 8
  %198 = load i32, i32* %31, align 4
  %199 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %20, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %21, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %21, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @calc_pixel_ext(%struct.mdp_format* %196, i64 %197, i32 %198, i32 %200, i32 %202, i32 %204, i32 0)
  br label %206

206:                                              ; preds = %185, %178
  %207 = load %struct.mdp_format*, %struct.mdp_format** %17, align 8
  %208 = load i64, i64* %34, align 8
  %209 = load i32, i32* %30, align 4
  %210 = call i64 @get_scale_config(%struct.mdp_format* %207, i64 %208, i32 %209, i32 1)
  %211 = load i64, i64* %19, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %19, align 8
  %213 = load %struct.mdp_format*, %struct.mdp_format** %17, align 8
  %214 = load i64, i64* %35, align 8
  %215 = load i32, i32* %31, align 4
  %216 = call i64 @get_scale_config(%struct.mdp_format* %213, i64 %214, i32 %215, i32 0)
  %217 = load i64, i64* %19, align 8
  %218 = or i64 %217, %216
  store i64 %218, i64* %19, align 8
  %219 = load i64, i64* %19, align 8
  %220 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %219)
  %221 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %222 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %225 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @drm_rotation_simplify(i32 %223, i32 %228)
  store i32 %229, i32* %25, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %27, align 4
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %26, align 4
  %244 = load %struct.mdp5_kms*, %struct.mdp5_kms** %14, align 8
  %245 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %13, align 8
  %246 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %247 = load i64, i64* %19, align 8
  %248 = load i64, i64* %22, align 8
  %249 = load i64, i64* %23, align 8
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* %28, align 4
  %253 = load i32, i32* %29, align 4
  %254 = load i32, i32* %30, align 4
  %255 = load i32, i32* %31, align 4
  %256 = load i64, i64* %36, align 8
  %257 = load i64, i64* %37, align 8
  %258 = load i64, i64* %32, align 8
  %259 = load i64, i64* %33, align 8
  %260 = load i64, i64* %34, align 8
  %261 = load i64, i64* %35, align 8
  %262 = call i32 @mdp5_hwpipe_mode_set(%struct.mdp5_kms* %244, %struct.mdp5_hw_pipe* %245, %struct.drm_framebuffer* %246, %struct.phase_step* %20, %struct.pixel_ext* %21, i64 %247, i64 %248, i64 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261)
  %263 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %16, align 8
  %264 = icmp ne %struct.mdp5_hw_pipe* %263, null
  br i1 %264, label %265, label %289

265:                                              ; preds = %206
  %266 = load %struct.mdp5_kms*, %struct.mdp5_kms** %14, align 8
  %267 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %16, align 8
  %268 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %269 = load i64, i64* %19, align 8
  %270 = load i64, i64* %22, align 8
  %271 = load i64, i64* %23, align 8
  %272 = load i32, i32* %27, align 4
  %273 = load i32, i32* %26, align 4
  %274 = load i32, i32* %28, align 4
  %275 = load i32, i32* %30, align 4
  %276 = add i32 %274, %275
  %277 = load i32, i32* %29, align 4
  %278 = load i32, i32* %30, align 4
  %279 = load i32, i32* %31, align 4
  %280 = load i64, i64* %36, align 8
  %281 = load i64, i64* %37, align 8
  %282 = load i64, i64* %32, align 8
  %283 = load i64, i64* %34, align 8
  %284 = add nsw i64 %282, %283
  %285 = load i64, i64* %33, align 8
  %286 = load i64, i64* %34, align 8
  %287 = load i64, i64* %35, align 8
  %288 = call i32 @mdp5_hwpipe_mode_set(%struct.mdp5_kms* %266, %struct.mdp5_hw_pipe* %267, %struct.drm_framebuffer* %268, %struct.phase_step* %20, %struct.pixel_ext* %21, i64 %269, i64 %270, i64 %271, i32 %272, i32 %273, i32 %276, i32 %277, i32 %278, i32 %279, i64 %280, i64 %281, i64 %284, i64 %285, i64 %286, i64 %287)
  br label %289

289:                                              ; preds = %265, %206
  %290 = load i32, i32* %38, align 4
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %289, %176, %164, %65
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local %struct.TYPE_14__* @to_mdp5_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_plane*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @pipe2nclients(i32) #1

declare dso_local %struct.mdp_format* @to_mdp_format(i32) #1

declare dso_local i32 @msm_framebuffer_format(%struct.drm_framebuffer*) #1

declare dso_local i8* @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i8* @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @DBG(i8*, i64, ...) #1

declare dso_local i32 @calc_scalex_steps(%struct.drm_plane*, i64, i64, i32, i32) #1

declare dso_local i32 @calc_scaley_steps(%struct.drm_plane*, i64, i64, i32, i32) #1

declare dso_local i32 @calc_pixel_ext(%struct.mdp_format*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @get_scale_config(%struct.mdp_format*, i64, i32, i32) #1

declare dso_local i32 @drm_rotation_simplify(i32, i32) #1

declare dso_local i32 @mdp5_hwpipe_mode_set(%struct.mdp5_kms*, %struct.mdp5_hw_pipe*, %struct.drm_framebuffer*, %struct.phase_step*, %struct.pixel_ext*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
