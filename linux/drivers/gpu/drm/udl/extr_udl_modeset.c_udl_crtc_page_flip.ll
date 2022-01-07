; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.udl_framebuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)* @udl_crtc_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_crtc_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, %struct.drm_modeset_acquire_ctx* %4) #0 {
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %11 = alloca %struct.udl_framebuffer*, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.udl_framebuffer*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.drm_modeset_acquire_ctx* %4, %struct.drm_modeset_acquire_ctx** %10, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %16 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %15)
  store %struct.udl_framebuffer* %16, %struct.udl_framebuffer** %11, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %12, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %13, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %26 = icmp ne %struct.drm_framebuffer* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %29 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %28)
  store %struct.udl_framebuffer* %29, %struct.udl_framebuffer** %14, align 8
  %30 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %14, align 8
  %31 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %5
  %33 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %11, align 8
  %34 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %11, align 8
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @udl_handle_damage(%struct.udl_framebuffer* %35, i32 0, i32 0, i32 %38, i32 %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %47 = icmp ne %struct.drm_pending_vblank_event* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %50 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %51 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %49, %struct.drm_pending_vblank_event* %50)
  br label %52

52:                                               ; preds = %48, %32
  %53 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %58 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.drm_framebuffer* %56, %struct.drm_framebuffer** %60, align 8
  ret i32 0
}

declare dso_local %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @udl_handle_damage(%struct.udl_framebuffer*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
