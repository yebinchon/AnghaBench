; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i64 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.shmob_drm_crtc = type { %struct.drm_pending_vblank_event*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32, %struct.drm_modeset_acquire_ctx*)* @shmob_drm_crtc_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_crtc_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3, %struct.drm_modeset_acquire_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_pending_vblank_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %12 = alloca %struct.shmob_drm_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_modeset_acquire_ctx* %4, %struct.drm_modeset_acquire_ctx** %11, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = call %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc* %15)
  store %struct.shmob_drm_crtc* %16, %struct.shmob_drm_crtc** %12, align 8
  %17 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %12, align 8
  %18 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %13, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i64, i64* %14, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %12, align 8
  %26 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %26, align 8
  %28 = icmp ne %struct.drm_pending_vblank_event* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %68

36:                                               ; preds = %5
  %37 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.drm_framebuffer* %41, %struct.drm_framebuffer** %45, align 8
  %46 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %12, align 8
  %47 = call i32 @shmob_drm_crtc_update_base(%struct.shmob_drm_crtc* %46)
  %48 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %49 = icmp ne %struct.drm_pending_vblank_event* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %36
  %51 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %52 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %12, align 8
  %54 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %53, i32 0, i32 1
  %55 = call i32 @drm_crtc_vblank_get(%struct.TYPE_4__* %54)
  %56 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %61 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %12, align 8
  %62 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %61, i32 0, i32 0
  store %struct.drm_pending_vblank_event* %60, %struct.drm_pending_vblank_event** %62, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %50, %36
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @shmob_drm_crtc_update_base(%struct.shmob_drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
