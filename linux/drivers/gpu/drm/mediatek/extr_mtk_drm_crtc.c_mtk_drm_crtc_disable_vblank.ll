; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mtk_drm_crtc = type { %struct.mtk_ddp_comp** }
%struct.mtk_ddp_comp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mtk_drm_crtc_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_disable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mtk_drm_crtc*, align 8
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc* %5)
  store %struct.mtk_drm_crtc* %6, %struct.mtk_drm_crtc** %3, align 8
  %7 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %8, align 8
  %10 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, i64 0
  %11 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %10, align 8
  store %struct.mtk_ddp_comp* %11, %struct.mtk_ddp_comp** %4, align 8
  %12 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %13 = call i32 @mtk_ddp_comp_disable_vblank(%struct.mtk_ddp_comp* %12)
  ret void
}

declare dso_local %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @mtk_ddp_comp_disable_vblank(%struct.mtk_ddp_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
