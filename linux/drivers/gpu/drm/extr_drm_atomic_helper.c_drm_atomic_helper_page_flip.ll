; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_plane* }
%struct.drm_plane = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, %struct.drm_modeset_acquire_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_pending_vblank_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca %struct.drm_atomic_state*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_modeset_acquire_ctx* %4, %struct.drm_modeset_acquire_ctx** %11, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  store %struct.drm_plane* %17, %struct.drm_plane** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %20)
  store %struct.drm_atomic_state* %21, %struct.drm_atomic_state** %13, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  %23 = icmp ne %struct.drm_atomic_state* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %47

27:                                               ; preds = %5
  %28 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %11, align 8
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  %30 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %29, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %28, %struct.drm_modeset_acquire_ctx** %30, align 8
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %34 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @page_flip_common(%struct.drm_atomic_state* %31, %struct.drm_crtc* %32, %struct.drm_framebuffer* %33, %struct.drm_pending_vblank_event* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  %42 = call i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state* %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  %45 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local i32 @page_flip_common(%struct.drm_atomic_state*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32) #1

declare dso_local i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
