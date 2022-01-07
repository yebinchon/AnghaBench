; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.exynos_drm_crtc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @exynos_drm_crtc_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_crtc_disable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc* %4)
  store %struct.exynos_drm_crtc* %5, %struct.exynos_drm_crtc** %3, align 8
  %6 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.exynos_drm_crtc*)*, i32 (%struct.exynos_drm_crtc*)** %9, align 8
  %11 = icmp ne i32 (%struct.exynos_drm_crtc*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.exynos_drm_crtc*)*, i32 (%struct.exynos_drm_crtc*)** %16, align 8
  %18 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %19 = call i32 %17(%struct.exynos_drm_crtc* %18)
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
