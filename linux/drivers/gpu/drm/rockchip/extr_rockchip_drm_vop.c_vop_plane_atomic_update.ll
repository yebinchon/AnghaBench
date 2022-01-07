; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, %struct.drm_rect, %struct.drm_rect, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_rect = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, i64*, %struct.TYPE_6__*, %struct.drm_gem_object** }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i64, i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.vop_win = type { %struct.vop_win_yuv2yuv_data*, %struct.vop_win_data* }
%struct.vop_win_yuv2yuv_data = type { i32 }
%struct.vop_win_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.vop = type { i32, i32, i32 }
%struct.rockchip_gem_object = type { i32 }

@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@yrgb_vir = common dso_local global i32 0, align 4
@yrgb_mst = common dso_local global i32 0, align 4
@y2r_en = common dso_local global i32 0, align 4
@y_mir_en = common dso_local global i32 0, align 4
@x_mir_en = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@uv_vir = common dso_local global i32 0, align 4
@uv_mst = common dso_local global i32 0, align 4
@NUM_YUV2YUV_COEFFICIENTS = common dso_local global i32 0, align 4
@y2r_coefficients = common dso_local global i32* null, align 8
@bt601_yuv2rgb = common dso_local global i32* null, align 8
@dst_alpha_ctl = common dso_local global i32 0, align 4
@ALPHA_SRC_INVERSE = common dso_local global i32 0, align 4
@ALPHA_SRC_PRE_MUL = common dso_local global i32 0, align 4
@ALPHA_STRAIGHT = common dso_local global i32 0, align 4
@ALPHA_PER_PIX = common dso_local global i32 0, align 4
@ALPHA_NO_SATURATION = common dso_local global i32 0, align 4
@ALPHA_ONE = common dso_local global i32 0, align 4
@src_alpha_ctl = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vop_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.vop_win*, align 8
  %8 = alloca %struct.vop_win_data*, align 8
  %9 = alloca %struct.vop_win_yuv2yuv_data*, align 8
  %10 = alloca %struct.vop*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_rect*, align 8
  %20 = alloca %struct.drm_rect*, align 8
  %21 = alloca %struct.drm_gem_object*, align 8
  %22 = alloca %struct.drm_gem_object*, align 8
  %23 = alloca %struct.rockchip_gem_object*, align 8
  %24 = alloca %struct.rockchip_gem_object*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %36 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 0
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %37, align 8
  store %struct.drm_plane_state* %38, %struct.drm_plane_state** %5, align 8
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 5
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %40, align 8
  store %struct.drm_crtc* %41, %struct.drm_crtc** %6, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %43 = call %struct.vop_win* @to_vop_win(%struct.drm_plane* %42)
  store %struct.vop_win* %43, %struct.vop_win** %7, align 8
  %44 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %45 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %44, i32 0, i32 1
  %46 = load %struct.vop_win_data*, %struct.vop_win_data** %45, align 8
  store %struct.vop_win_data* %46, %struct.vop_win_data** %8, align 8
  %47 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %48 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %47, i32 0, i32 0
  %49 = load %struct.vop_win_yuv2yuv_data*, %struct.vop_win_yuv2yuv_data** %48, align 8
  store %struct.vop_win_yuv2yuv_data* %49, %struct.vop_win_yuv2yuv_data** %9, align 8
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 5
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %51, align 8
  %53 = call %struct.vop* @to_vop(%struct.drm_crtc* %52)
  store %struct.vop* %53, %struct.vop** %10, align 8
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %55 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %54, i32 0, i32 4
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %55, align 8
  store %struct.drm_framebuffer* %56, %struct.drm_framebuffer** %11, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 3
  store %struct.drm_rect* %58, %struct.drm_rect** %19, align 8
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %60 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %59, i32 0, i32 2
  store %struct.drm_rect* %60, %struct.drm_rect** %20, align 8
  %61 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %62 = call i32 @VOP_WIN_TO_INDEX(%struct.vop_win* %61)
  store i32 %62, i32* %29, align 4
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %31, align 4
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %69 = icmp ne %struct.drm_crtc* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %2
  br label %476

75:                                               ; preds = %2
  %76 = load %struct.vop*, %struct.vop** %10, align 8
  %77 = getelementptr inbounds %struct.vop, %struct.vop* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @WARN_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %476

85:                                               ; preds = %75
  %86 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %87 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %93 = call i32 @vop_plane_atomic_disable(%struct.drm_plane* %91, %struct.drm_plane_state* %92)
  br label %476

94:                                               ; preds = %85
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %96 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %95, i32 0, i32 3
  %97 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %96, align 8
  %98 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %97, i64 0
  %99 = load %struct.drm_gem_object*, %struct.drm_gem_object** %98, align 8
  store %struct.drm_gem_object* %99, %struct.drm_gem_object** %21, align 8
  %100 = load %struct.drm_gem_object*, %struct.drm_gem_object** %21, align 8
  %101 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %100)
  store %struct.rockchip_gem_object* %101, %struct.rockchip_gem_object** %23, align 8
  %102 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %103 = call i32 @drm_rect_width(%struct.drm_rect* %102)
  %104 = ashr i32 %103, 16
  store i32 %104, i32* %12, align 4
  %105 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %106 = call i32 @drm_rect_height(%struct.drm_rect* %105)
  %107 = ashr i32 %106, 16
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub i32 %108, 1
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %12, align 4
  %112 = sub i32 %111, 1
  %113 = and i32 %112, 65535
  %114 = or i32 %110, %113
  store i32 %114, i32* %16, align 4
  %115 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %116 = call i32 @drm_rect_height(%struct.drm_rect* %115)
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 %117, 16
  store i32 %118, i32* %17, align 4
  %119 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %120 = call i32 @drm_rect_width(%struct.drm_rect* %119)
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %121, 65535
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %17, align 4
  %125 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %126 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %129 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %127, %131
  %133 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %134 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %132, %136
  store i32 %137, i32* %14, align 4
  %138 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %139 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %142 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %140, %144
  %146 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %147 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %145, %149
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = shl i32 %151, 16
  %153 = load i32, i32* %14, align 4
  %154 = and i32 %153, 65535
  %155 = or i32 %152, %154
  store i32 %155, i32* %18, align 4
  %156 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %157 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = lshr i32 %158, 16
  %160 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %161 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = mul i32 %159, %166
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %25, align 8
  %169 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %170 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = lshr i32 %171, 16
  %173 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %174 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = mul i32 %172, %177
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* %25, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %25, align 8
  %182 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %23, align 8
  %183 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %25, align 8
  %187 = add i64 %185, %186
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %188, i32 0, i32 1
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %187, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %26, align 4
  %195 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %196 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %94
  %202 = load i32, i32* %13, align 4
  %203 = sub i32 %202, 1
  %204 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %205 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = mul i32 %203, %208
  %210 = load i32, i32* %26, align 4
  %211 = add i32 %210, %209
  store i32 %211, i32* %26, align 4
  br label %212

212:                                              ; preds = %201, %94
  %213 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %214 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %213, i32 0, i32 2
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @vop_convert_format(i32 %217)
  store i32 %218, i32* %30, align 4
  %219 = load %struct.vop*, %struct.vop** %10, align 8
  %220 = getelementptr inbounds %struct.vop, %struct.vop* %219, i32 0, i32 0
  %221 = call i32 @spin_lock(i32* %220)
  %222 = load %struct.vop*, %struct.vop** %10, align 8
  %223 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %224 = load i32, i32* %30, align 4
  %225 = load i32, i32* %30, align 4
  %226 = call i32 @VOP_WIN_SET(%struct.vop* %222, %struct.vop_win_data* %223, i32 %224, i32 %225)
  %227 = load %struct.vop*, %struct.vop** %10, align 8
  %228 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %229 = load i32, i32* @yrgb_vir, align 4
  %230 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %231 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @DIV_ROUND_UP(i32 %234, i32 4)
  %236 = call i32 @VOP_WIN_SET(%struct.vop* %227, %struct.vop_win_data* %228, i32 %229, i32 %235)
  %237 = load %struct.vop*, %struct.vop** %10, align 8
  %238 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %239 = load i32, i32* @yrgb_mst, align 4
  %240 = load i32, i32* %26, align 4
  %241 = call i32 @VOP_WIN_SET(%struct.vop* %237, %struct.vop_win_data* %238, i32 %239, i32 %240)
  %242 = load %struct.vop*, %struct.vop** %10, align 8
  %243 = load %struct.vop_win_yuv2yuv_data*, %struct.vop_win_yuv2yuv_data** %9, align 8
  %244 = load i32, i32* @y2r_en, align 4
  %245 = load i32, i32* %31, align 4
  %246 = call i32 @VOP_WIN_YUV2YUV_SET(%struct.vop* %242, %struct.vop_win_yuv2yuv_data* %243, i32 %244, i32 %245)
  %247 = load %struct.vop*, %struct.vop** %10, align 8
  %248 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %249 = load i32, i32* @y_mir_en, align 4
  %250 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %251 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 1, i32 0
  %258 = call i32 @VOP_WIN_SET(%struct.vop* %247, %struct.vop_win_data* %248, i32 %249, i32 %257)
  %259 = load %struct.vop*, %struct.vop** %10, align 8
  %260 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %261 = load i32, i32* @x_mir_en, align 4
  %262 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %263 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = call i32 @VOP_WIN_SET(%struct.vop* %259, %struct.vop_win_data* %260, i32 %261, i32 %269)
  %271 = load i32, i32* %31, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %372

273:                                              ; preds = %212
  %274 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %275 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %274, i32 0, i32 2
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %33, align 4
  %279 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %280 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %279, i32 0, i32 2
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %34, align 4
  %284 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %285 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %284, i32 0, i32 2
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %35, align 4
  %291 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %292 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %291, i32 0, i32 3
  %293 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %292, align 8
  %294 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %293, i64 1
  %295 = load %struct.drm_gem_object*, %struct.drm_gem_object** %294, align 8
  store %struct.drm_gem_object* %295, %struct.drm_gem_object** %22, align 8
  %296 = load %struct.drm_gem_object*, %struct.drm_gem_object** %22, align 8
  %297 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %296)
  store %struct.rockchip_gem_object* %297, %struct.rockchip_gem_object** %24, align 8
  %298 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %299 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = lshr i32 %300, 16
  %302 = load i32, i32* %35, align 4
  %303 = mul i32 %301, %302
  %304 = load i32, i32* %33, align 4
  %305 = udiv i32 %303, %304
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %25, align 8
  %307 = load %struct.drm_rect*, %struct.drm_rect** %19, align 8
  %308 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = lshr i32 %309, 16
  %311 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %312 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = mul i32 %310, %315
  %317 = load i32, i32* %34, align 4
  %318 = udiv i32 %316, %317
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* %25, align 8
  %321 = add i64 %320, %319
  store i64 %321, i64* %25, align 8
  %322 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %24, align 8
  %323 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* %25, align 8
  %327 = add i64 %325, %326
  %328 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %329 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %328, i32 0, i32 1
  %330 = load i64*, i64** %329, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 1
  %332 = load i64, i64* %331, align 8
  %333 = add i64 %327, %332
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %26, align 4
  %335 = load %struct.vop*, %struct.vop** %10, align 8
  %336 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %337 = load i32, i32* @uv_vir, align 4
  %338 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %339 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @DIV_ROUND_UP(i32 %342, i32 4)
  %344 = call i32 @VOP_WIN_SET(%struct.vop* %335, %struct.vop_win_data* %336, i32 %337, i32 %343)
  %345 = load %struct.vop*, %struct.vop** %10, align 8
  %346 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %347 = load i32, i32* @uv_mst, align 4
  %348 = load i32, i32* %26, align 4
  %349 = call i32 @VOP_WIN_SET(%struct.vop* %345, %struct.vop_win_data* %346, i32 %347, i32 %348)
  store i32 0, i32* %32, align 4
  br label %350

350:                                              ; preds = %368, %273
  %351 = load i32, i32* %32, align 4
  %352 = load i32, i32* @NUM_YUV2YUV_COEFFICIENTS, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %371

354:                                              ; preds = %350
  %355 = load %struct.vop*, %struct.vop** %10, align 8
  %356 = load %struct.vop_win_yuv2yuv_data*, %struct.vop_win_yuv2yuv_data** %9, align 8
  %357 = load i32*, i32** @y2r_coefficients, align 8
  %358 = load i32, i32* %32, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** @bt601_yuv2rgb, align 8
  %363 = load i32, i32* %32, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @VOP_WIN_YUV2YUV_COEFFICIENT_SET(%struct.vop* %355, %struct.vop_win_yuv2yuv_data* %356, i32 %361, i32 %366)
  br label %368

368:                                              ; preds = %354
  %369 = load i32, i32* %32, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %32, align 4
  br label %350

371:                                              ; preds = %350
  br label %372

372:                                              ; preds = %371, %212
  %373 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %374 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %373, i32 0, i32 0
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %372
  %380 = load %struct.vop*, %struct.vop** %10, align 8
  %381 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %13, align 4
  %384 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %385 = call i32 @drm_rect_width(%struct.drm_rect* %384)
  %386 = load %struct.drm_rect*, %struct.drm_rect** %20, align 8
  %387 = call i32 @drm_rect_height(%struct.drm_rect* %386)
  %388 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %389 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %388, i32 0, i32 2
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = call i32 @scl_vop_cal_scl_fac(%struct.vop* %380, %struct.vop_win_data* %381, i32 %382, i32 %383, i32 %385, i32 %387, %struct.TYPE_6__* %390)
  br label %392

392:                                              ; preds = %379, %372
  %393 = load %struct.vop*, %struct.vop** %10, align 8
  %394 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %16, align 4
  %397 = call i32 @VOP_WIN_SET(%struct.vop* %393, %struct.vop_win_data* %394, i32 %395, i32 %396)
  %398 = load %struct.vop*, %struct.vop** %10, align 8
  %399 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %17, align 4
  %402 = call i32 @VOP_WIN_SET(%struct.vop* %398, %struct.vop_win_data* %399, i32 %400, i32 %401)
  %403 = load %struct.vop*, %struct.vop** %10, align 8
  %404 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %405 = load i32, i32* %18, align 4
  %406 = load i32, i32* %18, align 4
  %407 = call i32 @VOP_WIN_SET(%struct.vop* %403, %struct.vop_win_data* %404, i32 %405, i32 %406)
  %408 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %409 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %408, i32 0, i32 2
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @has_rb_swapped(i32 %412)
  store i32 %413, i32* %28, align 4
  %414 = load %struct.vop*, %struct.vop** %10, align 8
  %415 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %416 = load i32, i32* %28, align 4
  %417 = load i32, i32* %28, align 4
  %418 = call i32 @VOP_WIN_SET(%struct.vop* %414, %struct.vop_win_data* %415, i32 %416, i32 %417)
  %419 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %420 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %419, i32 0, i32 2
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %456

425:                                              ; preds = %392
  %426 = load i32, i32* %29, align 4
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %456

428:                                              ; preds = %425
  %429 = load %struct.vop*, %struct.vop** %10, align 8
  %430 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %431 = load i32, i32* @dst_alpha_ctl, align 4
  %432 = load i32, i32* @ALPHA_SRC_INVERSE, align 4
  %433 = call i32 @DST_FACTOR_M0(i32 %432)
  %434 = call i32 @VOP_WIN_SET(%struct.vop* %429, %struct.vop_win_data* %430, i32 %431, i32 %433)
  %435 = call i32 @SRC_ALPHA_EN(i32 1)
  %436 = load i32, i32* @ALPHA_SRC_PRE_MUL, align 4
  %437 = call i32 @SRC_COLOR_M0(i32 %436)
  %438 = or i32 %435, %437
  %439 = load i32, i32* @ALPHA_STRAIGHT, align 4
  %440 = call i32 @SRC_ALPHA_M0(i32 %439)
  %441 = or i32 %438, %440
  %442 = load i32, i32* @ALPHA_PER_PIX, align 4
  %443 = call i32 @SRC_BLEND_M0(i32 %442)
  %444 = or i32 %441, %443
  %445 = load i32, i32* @ALPHA_NO_SATURATION, align 4
  %446 = call i32 @SRC_ALPHA_CAL_M0(i32 %445)
  %447 = or i32 %444, %446
  %448 = load i32, i32* @ALPHA_ONE, align 4
  %449 = call i32 @SRC_FACTOR_M0(i32 %448)
  %450 = or i32 %447, %449
  store i32 %450, i32* %27, align 4
  %451 = load %struct.vop*, %struct.vop** %10, align 8
  %452 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %453 = load i32, i32* @src_alpha_ctl, align 4
  %454 = load i32, i32* %27, align 4
  %455 = call i32 @VOP_WIN_SET(%struct.vop* %451, %struct.vop_win_data* %452, i32 %453, i32 %454)
  br label %462

456:                                              ; preds = %425, %392
  %457 = load %struct.vop*, %struct.vop** %10, align 8
  %458 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %459 = load i32, i32* @src_alpha_ctl, align 4
  %460 = call i32 @SRC_ALPHA_EN(i32 0)
  %461 = call i32 @VOP_WIN_SET(%struct.vop* %457, %struct.vop_win_data* %458, i32 %459, i32 %460)
  br label %462

462:                                              ; preds = %456, %428
  %463 = load %struct.vop*, %struct.vop** %10, align 8
  %464 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %465 = load i32, i32* @enable, align 4
  %466 = call i32 @VOP_WIN_SET(%struct.vop* %463, %struct.vop_win_data* %464, i32 %465, i32 1)
  %467 = load i32, i32* %29, align 4
  %468 = call i32 @BIT(i32 %467)
  %469 = load %struct.vop*, %struct.vop** %10, align 8
  %470 = getelementptr inbounds %struct.vop, %struct.vop* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 4
  %473 = load %struct.vop*, %struct.vop** %10, align 8
  %474 = getelementptr inbounds %struct.vop, %struct.vop* %473, i32 0, i32 0
  %475 = call i32 @spin_unlock(i32* %474)
  br label %476

476:                                              ; preds = %462, %90, %84, %74
  ret void
}

declare dso_local %struct.vop_win* @to_vop_win(%struct.drm_plane*) #1

declare dso_local %struct.vop* @to_vop(%struct.drm_crtc*) #1

declare dso_local i32 @VOP_WIN_TO_INDEX(%struct.vop_win*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vop_plane_atomic_disable(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @vop_convert_format(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @VOP_WIN_SET(%struct.vop*, %struct.vop_win_data*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @VOP_WIN_YUV2YUV_SET(%struct.vop*, %struct.vop_win_yuv2yuv_data*, i32, i32) #1

declare dso_local i32 @VOP_WIN_YUV2YUV_COEFFICIENT_SET(%struct.vop*, %struct.vop_win_yuv2yuv_data*, i32, i32) #1

declare dso_local i32 @scl_vop_cal_scl_fac(%struct.vop*, %struct.vop_win_data*, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @has_rb_swapped(i32) #1

declare dso_local i32 @DST_FACTOR_M0(i32) #1

declare dso_local i32 @SRC_ALPHA_EN(i32) #1

declare dso_local i32 @SRC_COLOR_M0(i32) #1

declare dso_local i32 @SRC_ALPHA_M0(i32) #1

declare dso_local i32 @SRC_BLEND_M0(i32) #1

declare dso_local i32 @SRC_ALPHA_CAL_M0(i32) #1

declare dso_local i32 @SRC_FACTOR_M0(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
