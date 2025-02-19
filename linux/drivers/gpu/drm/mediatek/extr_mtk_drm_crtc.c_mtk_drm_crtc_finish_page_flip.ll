; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_finish_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_finish_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_drm_crtc = type { i32*, %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_drm_crtc*)* @mtk_drm_crtc_finish_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_finish_page_flip(%struct.mtk_drm_crtc* %0) #0 {
  %2 = alloca %struct.mtk_drm_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i64, align 8
  store %struct.mtk_drm_crtc* %0, %struct.mtk_drm_crtc** %2, align 8
  %5 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %5, i32 0, i32 1
  store %struct.drm_crtc* %6, %struct.drm_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %13, i32* %16)
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %18)
  %20 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
