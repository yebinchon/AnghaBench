; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_crtc_ddp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_crtc_ddp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_ddp_comp = type { i32 }
%struct.mtk_drm_crtc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_crtc_ddp_irq(%struct.drm_crtc* %0, %struct.mtk_ddp_comp* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca %struct.mtk_drm_crtc*, align 8
  %6 = alloca %struct.mtk_drm_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.mtk_ddp_comp* %1, %struct.mtk_ddp_comp** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc* %7)
  store %struct.mtk_drm_crtc* %8, %struct.mtk_drm_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %12, align 8
  store %struct.mtk_drm_private* %13, %struct.mtk_drm_private** %6, align 8
  %14 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = call i32 @mtk_crtc_ddp_config(%struct.drm_crtc* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %25 = call i32 @mtk_drm_finish_page_flip(%struct.mtk_drm_crtc* %24)
  ret void
}

declare dso_local %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @mtk_crtc_ddp_config(%struct.drm_crtc*) #1

declare dso_local i32 @mtk_drm_finish_page_flip(%struct.mtk_drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
