; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_page_flip_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_page_flip_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.drm_device*, %struct.TYPE_12__* }
%struct.drm_device = type { i32, %struct.TYPE_11__*, %struct.radeon_device* }
%struct.TYPE_11__ = type { i32 (%struct.drm_device*, i32)* }
%struct.radeon_device = type { i32 }
%struct.TYPE_12__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_10__*, %struct.drm_gem_object** }
%struct.TYPE_10__ = type { i32* }
%struct.drm_gem_object = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.radeon_crtc = type { i64, i32, %struct.radeon_flip_work*, i64, i32 }
%struct.radeon_flip_work = type { i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.drm_pending_vblank_event*, %struct.radeon_device*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.radeon_bo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_flip_work_func = common dso_local global i32 0, align 4
@radeon_unpin_work_func = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"flip-ioctl() cur_rbo = %p, new_rbo = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to reserve new rbo buffer before flip\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to pin new rbo buffer before flip\0A\00", align 1
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_FLIP_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"flip queue: crtc already busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RADEON_FLIP_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to reserve new rbo in error path\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to unpin new rbo in error path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, i32, %struct.drm_modeset_acquire_ctx*)* @radeon_crtc_page_flip_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_crtc_page_flip_target(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, i32 %4, %struct.drm_modeset_acquire_ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.radeon_device*, align 8
  %16 = alloca %struct.radeon_crtc*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca %struct.radeon_flip_work*, align 8
  %19 = alloca %struct.radeon_bo*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %13, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 2
  %30 = load %struct.drm_device*, %struct.drm_device** %29, align 8
  store %struct.drm_device* %30, %struct.drm_device** %14, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 2
  %33 = load %struct.radeon_device*, %struct.radeon_device** %32, align 8
  store %struct.radeon_device* %33, %struct.radeon_device** %15, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %35 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %34)
  store %struct.radeon_crtc* %35, %struct.radeon_crtc** %16, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.radeon_flip_work* @kzalloc(i32 56, i32 %36)
  store %struct.radeon_flip_work* %37, %struct.radeon_flip_work** %18, align 8
  %38 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %39 = icmp eq %struct.radeon_flip_work* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %358

43:                                               ; preds = %6
  %44 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %45 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %44, i32 0, i32 5
  %46 = load i32, i32* @radeon_flip_work_func, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %49 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %48, i32 0, i32 9
  %50 = load i32, i32* @radeon_unpin_work_func, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %53 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %54 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %53, i32 0, i32 8
  store %struct.radeon_device* %52, %struct.radeon_device** %54, align 8
  %55 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %56 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %59 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %61 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %62 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %61, i32 0, i32 7
  store %struct.drm_pending_vblank_event* %60, %struct.drm_pending_vblank_event** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @DRM_MODE_PAGE_FLIP_ASYNC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %69 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %71 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %73, align 8
  %75 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %74, i32 0, i32 2
  %76 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %75, align 8
  %77 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %76, i64 0
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %77, align 8
  store %struct.drm_gem_object* %78, %struct.drm_gem_object** %17, align 8
  %79 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %80 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %79)
  %81 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %82 = call i8* @gem_to_radeon_bo(%struct.drm_gem_object* %81)
  %83 = bitcast i8* %82 to %struct.TYPE_14__*
  %84 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %85 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %84, i32 0, i32 4
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 2
  %88 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %87, align 8
  %89 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %88, i64 0
  %90 = load %struct.drm_gem_object*, %struct.drm_gem_object** %89, align 8
  store %struct.drm_gem_object* %90, %struct.drm_gem_object** %17, align 8
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %92 = call i8* @gem_to_radeon_bo(%struct.drm_gem_object* %91)
  %93 = bitcast i8* %92 to %struct.radeon_bo*
  store %struct.radeon_bo* %93, %struct.radeon_bo** %19, align 8
  %94 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %95 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %94, i32 0, i32 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %98 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %96, %struct.radeon_bo* %97)
  %99 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %100 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %99, i32 0)
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %24, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %43
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %344

108:                                              ; preds = %43
  %109 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %110 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %111 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %112 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 134217728
  %116 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %109, i32 %110, i32 %115, i32* %22)
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %124 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %24, align 4
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %344

128:                                              ; preds = %108
  %129 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %130 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dma_resv_get_excl(i32 %133)
  %135 = call i32 @dma_fence_get(i32 %134)
  %136 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %137 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %139 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %138, i32* %20, i32* null)
  %140 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %141 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %140)
  %142 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %143 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %256, label %145

145:                                              ; preds = %128
  %146 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %147 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %22, align 4
  %153 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %154 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %159 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %157, %164
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %218

170:                                              ; preds = %145
  %171 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %172 = call i64 @ASIC_IS_R300(%struct.radeon_device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %22, align 4
  %176 = and i32 %175, -2048
  store i32 %176, i32* %22, align 4
  br label %217

177:                                              ; preds = %170
  %178 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %179 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 8
  %186 = ashr i32 %185, 4
  store i32 %186, i32* %25, align 4
  %187 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %188 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = ashr i32 %189, 3
  %191 = load i32, i32* %21, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %194 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %192, %195
  %197 = load i32, i32* %25, align 4
  %198 = sub nsw i32 8, %197
  %199 = ashr i32 %196, %198
  %200 = shl i32 %199, 11
  store i32 %200, i32* %26, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %203 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %25, align 4
  %206 = shl i32 %204, %205
  %207 = srem i32 %206, 256
  %208 = add nsw i32 %201, %207
  %209 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %210 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = srem i32 %211, 8
  %213 = shl i32 %212, 8
  %214 = add nsw i32 %208, %213
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %22, align 4
  br label %217

217:                                              ; preds = %177, %174
  br label %253

218:                                              ; preds = %145
  %219 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %220 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %225 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %223, %226
  store i32 %227, i32* %27, align 4
  %228 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %229 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %228, i32 0, i32 1
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %234, 8
  switch i32 %235, label %237 [
    i32 8, label %236
    i32 15, label %240
    i32 16, label %240
    i32 24, label %243
    i32 32, label %246
  ]

236:                                              ; preds = %218
  br label %237

237:                                              ; preds = %218, %236
  %238 = load i32, i32* %27, align 4
  %239 = mul nsw i32 %238, 1
  store i32 %239, i32* %27, align 4
  br label %249

240:                                              ; preds = %218, %218
  %241 = load i32, i32* %27, align 4
  %242 = mul nsw i32 %241, 2
  store i32 %242, i32* %27, align 4
  br label %249

243:                                              ; preds = %218
  %244 = load i32, i32* %27, align 4
  %245 = mul nsw i32 %244, 3
  store i32 %245, i32* %27, align 4
  br label %249

246:                                              ; preds = %218
  %247 = load i32, i32* %27, align 4
  %248 = mul nsw i32 %247, 4
  store i32 %248, i32* %27, align 4
  br label %249

249:                                              ; preds = %246, %243, %240, %237
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %22, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %22, align 4
  br label %253

253:                                              ; preds = %249, %217
  %254 = load i32, i32* %22, align 4
  %255 = and i32 %254, -8
  store i32 %255, i32* %22, align 4
  br label %256

256:                                              ; preds = %253, %128
  %257 = load i32, i32* %22, align 4
  %258 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %259 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %262 = call i64 @drm_crtc_vblank_count(%struct.drm_crtc* %261)
  %263 = trunc i64 %262 to i32
  %264 = sub nsw i32 %260, %263
  %265 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %266 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %265, i32 0, i32 1
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %268, align 8
  %270 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %271 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %272 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = call i32 %269(%struct.drm_device* %270, i32 %273)
  %275 = add nsw i32 %264, %274
  %276 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %277 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  %278 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %279 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %278, i32 0, i32 2
  %280 = load %struct.drm_device*, %struct.drm_device** %279, align 8
  %281 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %280, i32 0, i32 0
  %282 = load i64, i64* %23, align 8
  %283 = call i32 @spin_lock_irqsave(i32* %281, i64 %282)
  %284 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %285 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @RADEON_FLIP_NONE, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %256
  %290 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %291 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %292 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %291, i32 0, i32 2
  %293 = load %struct.drm_device*, %struct.drm_device** %292, align 8
  %294 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %293, i32 0, i32 0
  %295 = load i64, i64* %23, align 8
  %296 = call i32 @spin_unlock_irqrestore(i32* %294, i64 %295)
  %297 = load i32, i32* @EBUSY, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %24, align 4
  br label %323

299:                                              ; preds = %256
  %300 = load i64, i64* @RADEON_FLIP_PENDING, align 8
  %301 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %302 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  %303 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %304 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %305 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %304, i32 0, i32 2
  store %struct.radeon_flip_work* %303, %struct.radeon_flip_work** %305, align 8
  %306 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %307 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %308 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %307, i32 0, i32 3
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  store %struct.drm_framebuffer* %306, %struct.drm_framebuffer** %310, align 8
  %311 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %312 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %311, i32 0, i32 2
  %313 = load %struct.drm_device*, %struct.drm_device** %312, align 8
  %314 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %313, i32 0, i32 0
  %315 = load i64, i64* %23, align 8
  %316 = call i32 @spin_unlock_irqrestore(i32* %314, i64 %315)
  %317 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %318 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %321 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %320, i32 0, i32 5
  %322 = call i32 @queue_work(i32 %319, i32* %321)
  store i32 0, i32* %7, align 4
  br label %358

323:                                              ; preds = %289
  %324 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %325 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %324, i32 0)
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i32
  %328 = call i64 @unlikely(i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %323
  %331 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %344

332:                                              ; preds = %323
  %333 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %334 = call i64 @radeon_bo_unpin(%struct.radeon_bo* %333)
  %335 = icmp ne i64 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i64 @unlikely(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %332
  %340 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %332
  %342 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %343 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %342)
  br label %344

344:                                              ; preds = %341, %330, %122, %106
  %345 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %346 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %345, i32 0, i32 4
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 0
  %350 = call i32 @drm_gem_object_put_unlocked(i32* %349)
  %351 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %352 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @dma_fence_put(i32 %353)
  %355 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %18, align 8
  %356 = call i32 @kfree(%struct.radeon_flip_work* %355)
  %357 = load i32, i32* %24, align 4
  store i32 %357, i32* %7, align 4
  br label %358

358:                                              ; preds = %344, %299, %40
  %359 = load i32, i32* %7, align 4
  ret i32 %359
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_flip_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i8* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @dma_fence_get(i32) #1

declare dso_local i32 @dma_resv_get_excl(i32) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i64 @drm_crtc_vblank_count(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @kfree(%struct.radeon_flip_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
