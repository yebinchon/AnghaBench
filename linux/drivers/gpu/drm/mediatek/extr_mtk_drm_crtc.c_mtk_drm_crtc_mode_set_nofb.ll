; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mtk_crtc_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mtk_drm_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mtk_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mtk_crtc_state* @to_mtk_crtc_state(i32 %6)
  store %struct.mtk_crtc_state* %7, %struct.mtk_crtc_state** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @wmb()
  %27 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  ret void
}

declare dso_local %struct.mtk_crtc_state* @to_mtk_crtc_state(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
