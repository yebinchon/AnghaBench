; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_finish_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_finish_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { %struct.TYPE_3__, i32, %struct.drm_pending_vblank_event* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca %struct.drm_pending_vblank_event*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %14, i32 0, i32 2
  %16 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %15, align 8
  store %struct.drm_pending_vblank_event* %16, %struct.drm_pending_vblank_event** %3, align 8
  %17 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %18 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %17, i32 0, i32 2
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %3, align 8
  %24 = icmp eq %struct.drm_pending_vblank_event* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %32 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %31, i32 0, i32 0
  %33 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %3, align 8
  %34 = call i32 @drm_crtc_send_vblank_event(%struct.TYPE_3__* %32, %struct.drm_pending_vblank_event* %33)
  %35 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %36 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %35, i32 0, i32 1
  %37 = call i32 @wake_up(i32* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %43 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %42, i32 0, i32 0
  %44 = call i32 @drm_crtc_vblank_put(%struct.TYPE_3__* %43)
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.TYPE_3__*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
