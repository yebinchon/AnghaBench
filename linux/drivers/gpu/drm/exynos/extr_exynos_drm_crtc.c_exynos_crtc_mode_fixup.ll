; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_crtc_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_crtc_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @exynos_crtc_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_crtc_mode_fixup(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %10 = call %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc* %9)
  store %struct.exynos_drm_crtc* %10, %struct.exynos_drm_crtc** %8, align 8
  %11 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %8, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %14, align 8
  %16 = icmp ne i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %21, align 8
  %23 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %8, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = call i32 %22(%struct.exynos_drm_crtc* %23, %struct.drm_display_mode* %24, %struct.drm_display_mode* %25)
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
