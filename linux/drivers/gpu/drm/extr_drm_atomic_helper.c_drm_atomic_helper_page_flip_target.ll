; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_page_flip_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_page_flip_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_plane* }
%struct.drm_plane = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_crtc_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_page_flip_target(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, i32 %4, %struct.drm_modeset_acquire_ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %14 = alloca %struct.drm_plane*, align 8
  %15 = alloca %struct.drm_atomic_state*, align 8
  %16 = alloca %struct.drm_crtc_state*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %13, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.drm_plane*, %struct.drm_plane** %19, align 8
  store %struct.drm_plane* %20, %struct.drm_plane** %14, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %23)
  store %struct.drm_atomic_state* %24, %struct.drm_atomic_state** %15, align 8
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %26 = icmp ne %struct.drm_atomic_state* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %66

30:                                               ; preds = %6
  %31 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %13, align 8
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %33 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %32, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %31, %struct.drm_modeset_acquire_ctx** %33, align 8
  %34 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %37 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @page_flip_common(%struct.drm_atomic_state* %34, %struct.drm_crtc* %35, %struct.drm_framebuffer* %36, %struct.drm_pending_vblank_event* %37, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %62

43:                                               ; preds = %30
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %46 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %44, %struct.drm_crtc* %45)
  store %struct.drm_crtc_state* %46, %struct.drm_crtc_state** %16, align 8
  %47 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %48 = icmp ne %struct.drm_crtc_state* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  br label %62

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %59 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %61 = call i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state* %60)
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %56, %53, %42
  %63 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %64 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %63)
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %27
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local i32 @page_flip_common(%struct.drm_atomic_state*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
