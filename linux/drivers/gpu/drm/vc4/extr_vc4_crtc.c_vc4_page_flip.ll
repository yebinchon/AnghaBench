; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@DRM_MODE_PAGE_FLIP_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)* @vc4_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, %struct.drm_modeset_acquire_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_pending_vblank_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_modeset_acquire_ctx* %4, %struct.drm_modeset_acquire_ctx** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @DRM_MODE_PAGE_FLIP_ASYNC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %19 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @vc4_async_page_flip(%struct.drm_crtc* %17, %struct.drm_framebuffer* %18, %struct.drm_pending_vblank_event* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %5
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %25 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %11, align 8
  %28 = call i32 @drm_atomic_helper_page_flip(%struct.drm_crtc* %23, %struct.drm_framebuffer* %24, %struct.drm_pending_vblank_event* %25, i32 %26, %struct.drm_modeset_acquire_ctx* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @vc4_async_page_flip(%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32) #1

declare dso_local i32 @drm_atomic_helper_page_flip(%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
