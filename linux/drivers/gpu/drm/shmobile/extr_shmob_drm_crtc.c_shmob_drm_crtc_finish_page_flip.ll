; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_finish_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_finish_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_crtc = type { %struct.TYPE_3__, %struct.drm_pending_vblank_event* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shmob_drm_crtc_finish_page_flip(%struct.shmob_drm_crtc* %0) #0 {
  %2 = alloca %struct.shmob_drm_crtc*, align 8
  %3 = alloca %struct.drm_pending_vblank_event*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  store %struct.shmob_drm_crtc* %0, %struct.shmob_drm_crtc** %2, align 8
  %6 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %14, i32 0, i32 1
  %16 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %15, align 8
  store %struct.drm_pending_vblank_event* %16, %struct.drm_pending_vblank_event** %3, align 8
  %17 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %18 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %17, i32 0, i32 1
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %18, align 8
  %19 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %3, align 8
  %20 = icmp ne %struct.drm_pending_vblank_event* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %3, align 8
  %25 = call i32 @drm_crtc_send_vblank_event(%struct.TYPE_3__* %23, %struct.drm_pending_vblank_event* %24)
  %26 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %27 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %26, i32 0, i32 0
  %28 = call i32 @drm_crtc_vblank_put(%struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.TYPE_3__*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
