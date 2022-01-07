; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i64, i32, i64 }
%struct.exynos_drm_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"start addr = 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ovl_width = %d, ovl_height = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"osd pos: tx = %d, ty = %d, bx = %d, by = %d\0A\00", align 1
@WINCONx_TRIPLE_BUF_MODE = common dso_local global i64 0, align 8
@WINCONx_ENWIN = common dso_local global i64 0, align 8
@DECON_UPDATE = common dso_local global i64 0, align 8
@DECON_UPDATE_STANDALONE_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @decon_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_update_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.decon_context*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %16 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %17 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %19)
  store %struct.exynos_drm_plane_state* %20, %struct.exynos_drm_plane_state** %5, align 8
  %21 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.decon_context*, %struct.decon_context** %22, align 8
  store %struct.decon_context* %23, %struct.decon_context** %6, align 8
  %24 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %26, align 8
  store %struct.drm_framebuffer* %27, %struct.drm_framebuffer** %7, align 8
  %28 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %44 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %282

48:                                               ; preds = %2
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %50 = call i64 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %49, i32 0)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %53 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @VIDW_BUF_START(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel(i64 %51, i64 %57)
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = udiv i32 %59, %60
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %73 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @VIDW_WHOLE_X(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @writel(i64 %71, i64 %77)
  %79 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %80 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %83 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @VIDW_WHOLE_Y(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @writel(i64 %81, i64 %87)
  %89 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %90 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %94 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @VIDW_OFFSET_X(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @writel(i64 %92, i64 %98)
  %100 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %101 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %105 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @VIDW_OFFSET_Y(i32 %107)
  %109 = add nsw i64 %106, %108
  %110 = call i32 @writel(i64 %103, i64 %109)
  %111 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %112 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %118 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %121 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %127)
  %129 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %130 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @VIDOSDxA_TOPLEFT_X(i32 %132)
  %134 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %135 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @VIDOSDxA_TOPLEFT_Y(i32 %137)
  %139 = or i64 %133, %138
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %142 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @VIDOSD_A(i32 %144)
  %146 = add nsw i64 %143, %145
  %147 = call i32 @writel(i64 %140, i64 %146)
  %148 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %149 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %153 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add i32 %151, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %48
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %159, %48
  %163 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %164 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %168 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %166, %170
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32, i32* %12, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %174, %162
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @VIDOSDxB_BOTRIGHT_X(i32 %178)
  %180 = load i32, i32* %12, align 4
  %181 = call i64 @VIDOSDxB_BOTRIGHT_Y(i32 %180)
  %182 = or i64 %179, %181
  store i64 %182, i64* %9, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %185 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @VIDOSD_B(i32 %187)
  %189 = add nsw i64 %186, %188
  %190 = call i32 @writel(i64 %183, i64 %189)
  %191 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %192 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %195 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %199 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %193, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %201, i32 %202, i32 %203)
  %205 = call i64 @VIDOSDxC_ALPHA0_R_F(i32 0)
  %206 = call i64 @VIDOSDxC_ALPHA0_G_F(i32 0)
  %207 = or i64 %205, %206
  %208 = call i64 @VIDOSDxC_ALPHA0_B_F(i32 0)
  %209 = or i64 %207, %208
  store i64 %209, i64* %10, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %212 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i64 @VIDOSD_C(i32 %214)
  %216 = add nsw i64 %213, %215
  %217 = call i32 @writel(i64 %210, i64 %216)
  %218 = call i64 @VIDOSDxD_ALPHA1_R_F(i32 255)
  %219 = call i64 @VIDOSDxD_ALPHA1_G_F(i32 255)
  %220 = or i64 %218, %219
  %221 = call i64 @VIDOSDxD_ALPHA1_B_F(i32 255)
  %222 = or i64 %220, %221
  store i64 %222, i64* %10, align 8
  %223 = load i64, i64* %10, align 8
  %224 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %225 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i64 @VIDOSD_D(i32 %227)
  %229 = add nsw i64 %226, %228
  %230 = call i32 @writel(i64 %223, i64 %229)
  %231 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %234 = call i32 @decon_win_set_pixfmt(%struct.decon_context* %231, i32 %232, %struct.drm_framebuffer* %233)
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %177
  %238 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @decon_win_set_colkey(%struct.decon_context* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %177
  %242 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %243 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = call i64 @WINCON(i32 %245)
  %247 = add nsw i64 %244, %246
  %248 = call i64 @readl(i64 %247)
  store i64 %248, i64* %9, align 8
  %249 = load i64, i64* @WINCONx_TRIPLE_BUF_MODE, align 8
  %250 = load i64, i64* %9, align 8
  %251 = or i64 %250, %249
  store i64 %251, i64* %9, align 8
  %252 = load i64, i64* @WINCONx_ENWIN, align 8
  %253 = load i64, i64* %9, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %9, align 8
  %255 = load i64, i64* %9, align 8
  %256 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %257 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i64 @WINCON(i32 %259)
  %261 = add nsw i64 %258, %260
  %262 = call i32 @writel(i64 %255, i64 %261)
  %263 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @decon_shadow_protect_win(%struct.decon_context* %263, i32 %264, i32 0)
  %266 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %267 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @DECON_UPDATE, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i64 @readl(i64 %270)
  store i64 %271, i64* %9, align 8
  %272 = load i64, i64* @DECON_UPDATE_STANDALONE_F, align 8
  %273 = load i64, i64* %9, align 8
  %274 = or i64 %273, %272
  store i64 %274, i64* %9, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %277 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @DECON_UPDATE, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @writel(i64 %275, i64 %280)
  br label %282

282:                                              ; preds = %241, %47
  ret void
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local i64 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @VIDW_BUF_START(i32) #1

declare dso_local i64 @VIDW_WHOLE_X(i32) #1

declare dso_local i64 @VIDW_WHOLE_Y(i32) #1

declare dso_local i64 @VIDW_OFFSET_X(i32) #1

declare dso_local i64 @VIDW_OFFSET_Y(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_X(i32) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_Y(i32) #1

declare dso_local i64 @VIDOSD_A(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_X(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_Y(i32) #1

declare dso_local i64 @VIDOSD_B(i32) #1

declare dso_local i64 @VIDOSDxC_ALPHA0_R_F(i32) #1

declare dso_local i64 @VIDOSDxC_ALPHA0_G_F(i32) #1

declare dso_local i64 @VIDOSDxC_ALPHA0_B_F(i32) #1

declare dso_local i64 @VIDOSD_C(i32) #1

declare dso_local i64 @VIDOSDxD_ALPHA1_R_F(i32) #1

declare dso_local i64 @VIDOSDxD_ALPHA1_G_F(i32) #1

declare dso_local i64 @VIDOSDxD_ALPHA1_B_F(i32) #1

declare dso_local i64 @VIDOSD_D(i32) #1

declare dso_local i32 @decon_win_set_pixfmt(%struct.decon_context*, i32, %struct.drm_framebuffer*) #1

declare dso_local i32 @decon_win_set_colkey(%struct.decon_context*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @decon_shadow_protect_win(%struct.decon_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
