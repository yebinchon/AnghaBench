; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.TYPE_12__, %struct.decon_context* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.decon_context = type { i32, i64 }
%struct.exynos_drm_plane = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@IFTYPE_HDMI = common dso_local global i32 0, align 4
@WINCONx_ENWIN_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @decon_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_update_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.decon_context*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %13 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %16)
  store %struct.exynos_drm_plane_state* %17, %struct.exynos_drm_plane_state** %5, align 8
  %18 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %18, i32 0, i32 1
  %20 = load %struct.decon_context*, %struct.decon_context** %19, align 8
  store %struct.decon_context* %20, %struct.decon_context** %6, align 8
  %21 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %7, align 8
  %25 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %41 = call i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %40, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %2
  %51 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @COORDINATE_X(i64 %54)
  %56 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  %61 = call i32 @COORDINATE_Y(i32 %60)
  %62 = or i32 %55, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %65 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @DECON_VIDOSDxA(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @writel(i32 %63, i64 %69)
  %71 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %72 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %76 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %74, %79
  %81 = sub nsw i64 %80, 1
  %82 = call i32 @COORDINATE_X(i64 %81)
  %83 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %88 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %86, %90
  %92 = sdiv i32 %91, 2
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @COORDINATE_Y(i32 %93)
  %95 = or i32 %82, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %98 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @DECON_VIDOSDxB(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = call i32 @writel(i32 %96, i64 %102)
  br label %156

104:                                              ; preds = %2
  %105 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %106 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @COORDINATE_X(i64 %108)
  %110 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %111 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @COORDINATE_Y(i32 %113)
  %115 = or i32 %109, %114
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %118 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @DECON_VIDOSDxA(i32 %120)
  %122 = add nsw i64 %119, %121
  %123 = call i32 @writel(i32 %116, i64 %122)
  %124 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %129 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %127, %132
  %134 = sub nsw i64 %133, 1
  %135 = call i32 @COORDINATE_X(i64 %134)
  %136 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %137 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %141 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %139, %143
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @COORDINATE_Y(i32 %145)
  %147 = or i32 %135, %146
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %150 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @DECON_VIDOSDxB(i32 %152)
  %154 = add nsw i64 %151, %153
  %155 = call i32 @writel(i32 %148, i64 %154)
  br label %156

156:                                              ; preds = %104, %50
  %157 = call i32 @VIDOSD_Wx_ALPHA_R_F(i32 255)
  %158 = call i32 @VIDOSD_Wx_ALPHA_G_F(i32 255)
  %159 = or i32 %157, %158
  %160 = call i32 @VIDOSD_Wx_ALPHA_B_F(i32 255)
  %161 = or i32 %159, %160
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %164 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @DECON_VIDOSDxC(i32 %166)
  %168 = add nsw i64 %165, %167
  %169 = call i32 @writel(i32 %162, i64 %168)
  %170 = call i32 @VIDOSD_Wx_ALPHA_R_F(i32 0)
  %171 = call i32 @VIDOSD_Wx_ALPHA_G_F(i32 0)
  %172 = or i32 %170, %171
  %173 = call i32 @VIDOSD_Wx_ALPHA_B_F(i32 0)
  %174 = or i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %177 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i64 @DECON_VIDOSDxD(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = call i32 @writel(i32 %175, i64 %181)
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %185 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i64 @DECON_VIDW0xADD0B0(i32 %187)
  %189 = add nsw i64 %186, %188
  %190 = call i32 @writel(i32 %183, i64 %189)
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %194 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = mul i32 %192, %196
  %198 = add i32 %191, %197
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %201 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i64 @DECON_VIDW0xADD1B0(i32 %203)
  %205 = add nsw i64 %202, %204
  %206 = call i32 @writel(i32 %199, i64 %205)
  %207 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %208 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IFTYPE_HDMI, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %231, label %213

213:                                              ; preds = %156
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %216 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = mul i32 %218, %219
  %221 = sub i32 %214, %220
  %222 = call i32 @BIT_VAL(i32 %221, i32 27, i32 14)
  %223 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %224 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %9, align 4
  %228 = mul i32 %226, %227
  %229 = call i32 @BIT_VAL(i32 %228, i32 13, i32 0)
  %230 = or i32 %222, %229
  store i32 %230, i32* %12, align 4
  br label %249

231:                                              ; preds = %156
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %234 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %9, align 4
  %238 = mul i32 %236, %237
  %239 = sub i32 %232, %238
  %240 = call i32 @BIT_VAL(i32 %239, i32 29, i32 15)
  %241 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %242 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %9, align 4
  %246 = mul i32 %244, %245
  %247 = call i32 @BIT_VAL(i32 %246, i32 14, i32 0)
  %248 = or i32 %240, %247
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %231, %213
  %250 = load i32, i32* %12, align 4
  %251 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %252 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i64 @DECON_VIDW0xADD2(i32 %254)
  %256 = add nsw i64 %253, %255
  %257 = call i32 @writel(i32 %250, i64 %256)
  %258 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %261 = call i32 @decon_win_set_pixfmt(%struct.decon_context* %258, i32 %259, %struct.drm_framebuffer* %260)
  %262 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @DECON_WINCONx(i32 %263)
  %265 = load i32, i32* @WINCONx_ENWIN_F, align 4
  %266 = call i32 @decon_set_bits(%struct.decon_context* %262, i32 %264, i32 %265, i32 -1)
  ret void
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @COORDINATE_X(i64) #1

declare dso_local i32 @COORDINATE_Y(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DECON_VIDOSDxA(i32) #1

declare dso_local i64 @DECON_VIDOSDxB(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_R_F(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_G_F(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_B_F(i32) #1

declare dso_local i64 @DECON_VIDOSDxC(i32) #1

declare dso_local i64 @DECON_VIDOSDxD(i32) #1

declare dso_local i64 @DECON_VIDW0xADD0B0(i32) #1

declare dso_local i64 @DECON_VIDW0xADD1B0(i32) #1

declare dso_local i32 @BIT_VAL(i32, i32, i32) #1

declare dso_local i64 @DECON_VIDW0xADD2(i32) #1

declare dso_local i32 @decon_win_set_pixfmt(%struct.decon_context*, i32, %struct.drm_framebuffer*) #1

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i32, i32, i32) #1

declare dso_local i32 @DECON_WINCONx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
