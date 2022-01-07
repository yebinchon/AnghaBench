; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i32, i64, %struct.TYPE_12__*, i32, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.exynos_drm_plane = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [52 x i8] c"start addr = 0x%lx, end addr = 0x%lx, size = 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ovl_width = %d, ovl_height = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"osd pos: tx = %d, ty = %d, bx = %d, by = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"osd size = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @fimd_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_update_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.fimd_context*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %20 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %23)
  store %struct.exynos_drm_plane_state* %24, %struct.exynos_drm_plane_state** %5, align 8
  %25 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.fimd_context*, %struct.fimd_context** %26, align 8
  store %struct.fimd_context* %27, %struct.fimd_context** %6, align 8
  %28 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %30, align 8
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %7, align 8
  %32 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %43 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %48 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  br label %322

52:                                               ; preds = %2
  %53 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = mul i32 %56, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %18, align 4
  %65 = mul i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %70 = call i64 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %69, i32 0)
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %76 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i64 @VIDWx_BUF_START(i32 %78, i32 0)
  %80 = add nsw i64 %77, %79
  %81 = call i32 @writel(i64 %74, i64 %80)
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %82, %86
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %89, %90
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %94 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @VIDWx_BUF_END(i32 %96, i32 0)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @writel(i64 %92, i64 %98)
  %100 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %101 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %105, i64 %106)
  %108 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %109 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %112 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %116 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %122 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %17, align 4
  %126 = mul i32 %124, %125
  %127 = sub i32 %120, %126
  store i32 %127, i32* %14, align 4
  %128 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %129 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %17, align 4
  %133 = mul i32 %131, %132
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @VIDW_BUF_SIZE_OFFSET(i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = call i64 @VIDW_BUF_SIZE_PAGEWIDTH(i32 %136)
  %138 = or i64 %135, %137
  %139 = load i32, i32* %14, align 4
  %140 = call i64 @VIDW_BUF_SIZE_OFFSET_E(i32 %139)
  %141 = or i64 %138, %140
  %142 = load i32, i32* %15, align 4
  %143 = call i64 @VIDW_BUF_SIZE_PAGEWIDTH_E(i32 %142)
  %144 = or i64 %141, %143
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %147 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i64 @VIDWx_BUF_SIZE(i32 %149, i32 0)
  %151 = add nsw i64 %148, %150
  %152 = call i32 @writel(i64 %145, i64 %151)
  %153 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %154 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @VIDOSDxA_TOPLEFT_X(i32 %156)
  %158 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %159 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @VIDOSDxA_TOPLEFT_Y(i32 %161)
  %163 = or i64 %157, %162
  %164 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %165 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @VIDOSDxA_TOPLEFT_X_E(i32 %167)
  %169 = or i64 %163, %168
  %170 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %171 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @VIDOSDxA_TOPLEFT_Y_E(i32 %173)
  %175 = or i64 %169, %174
  store i64 %175, i64* %9, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %178 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = call i64 @VIDOSD_A(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @writel(i64 %176, i64 %182)
  %184 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %185 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %189 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %187, %191
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %52
  %196 = load i32, i32* %12, align 4
  %197 = add i32 %196, -1
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %195, %52
  %199 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %200 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %204 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add i32 %202, %206
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %198
  %211 = load i32, i32* %13, align 4
  %212 = add i32 %211, -1
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %210, %198
  %214 = load i32, i32* %12, align 4
  %215 = call i64 @VIDOSDxB_BOTRIGHT_X(i32 %214)
  %216 = load i32, i32* %13, align 4
  %217 = call i64 @VIDOSDxB_BOTRIGHT_Y(i32 %216)
  %218 = or i64 %215, %217
  %219 = load i32, i32* %12, align 4
  %220 = call i64 @VIDOSDxB_BOTRIGHT_X_E(i32 %219)
  %221 = or i64 %218, %220
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @VIDOSDxB_BOTRIGHT_Y_E(i32 %222)
  %224 = or i64 %221, %223
  store i64 %224, i64* %9, align 8
  %225 = load i64, i64* %9, align 8
  %226 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %227 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i64 @VIDOSD_B(i32 %229)
  %231 = add nsw i64 %228, %230
  %232 = call i32 @writel(i64 %225, i64 %231)
  %233 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %234 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %237 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %241 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %13, align 4
  %246 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %235, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %239, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 3
  br i1 %248, label %249, label %284

249:                                              ; preds = %213
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 4
  br i1 %251, label %252, label %284

252:                                              ; preds = %249
  %253 = load i32, i32* %16, align 4
  %254 = call i64 @VIDOSD_D(i32 %253)
  store i64 %254, i64* %19, align 8
  %255 = load i32, i32* %16, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* %16, align 4
  %259 = call i64 @VIDOSD_C(i32 %258)
  store i64 %259, i64* %19, align 8
  br label %260

260:                                              ; preds = %257, %252
  %261 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %262 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %266 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = mul i32 %264, %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %9, align 8
  %271 = load i64, i64* %9, align 8
  %272 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %273 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %19, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @writel(i64 %271, i64 %276)
  %278 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %279 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = load i64, i64* %9, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %260, %249, %213
  %285 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %288 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %289 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @fimd_win_set_pixfmt(%struct.fimd_context* %285, i32 %286, %struct.drm_framebuffer* %287, i32 %291)
  %293 = load i32, i32* %16, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %284
  %296 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @fimd_win_set_colkey(%struct.fimd_context* %296, i32 %297)
  br label %299

299:                                              ; preds = %295, %284
  %300 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @fimd_enable_video_output(%struct.fimd_context* %300, i32 %301, i32 1)
  %303 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %304 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %303, i32 0, i32 2
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %299
  %310 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %311 = load i32, i32* %16, align 4
  %312 = call i32 @fimd_enable_shadow_channel_path(%struct.fimd_context* %310, i32 %311, i32 1)
  br label %313

313:                                              ; preds = %309, %299
  %314 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %315 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  %320 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %319, i32 0, i32 0
  %321 = call i32 @atomic_set(i32* %320, i32 1)
  br label %322

322:                                              ; preds = %51, %318, %313
  ret void
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local i64 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @VIDWx_BUF_START(i32, i32) #1

declare dso_local i64 @VIDWx_BUF_END(i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i64 @VIDW_BUF_SIZE_OFFSET(i32) #1

declare dso_local i64 @VIDW_BUF_SIZE_PAGEWIDTH(i32) #1

declare dso_local i64 @VIDW_BUF_SIZE_OFFSET_E(i32) #1

declare dso_local i64 @VIDW_BUF_SIZE_PAGEWIDTH_E(i32) #1

declare dso_local i64 @VIDWx_BUF_SIZE(i32, i32) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_X(i32) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_Y(i32) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_X_E(i32) #1

declare dso_local i64 @VIDOSDxA_TOPLEFT_Y_E(i32) #1

declare dso_local i64 @VIDOSD_A(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_X(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_Y(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_X_E(i32) #1

declare dso_local i64 @VIDOSDxB_BOTRIGHT_Y_E(i32) #1

declare dso_local i64 @VIDOSD_B(i32) #1

declare dso_local i64 @VIDOSD_D(i32) #1

declare dso_local i64 @VIDOSD_C(i32) #1

declare dso_local i32 @fimd_win_set_pixfmt(%struct.fimd_context*, i32, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @fimd_win_set_colkey(%struct.fimd_context*, i32) #1

declare dso_local i32 @fimd_enable_video_output(%struct.fimd_context*, i32, i32) #1

declare dso_local i32 @fimd_enable_shadow_channel_path(%struct.fimd_context*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
