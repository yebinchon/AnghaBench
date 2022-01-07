; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { i32, %struct.vidi_context* }
%struct.vidi_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @vidi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidi_enable(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.vidi_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %4 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %4, i32 0, i32 1
  %6 = load %struct.vidi_context*, %struct.vidi_context** %5, align 8
  store %struct.vidi_context* %6, %struct.vidi_context** %3, align 8
  %7 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %8 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %11 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %13 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %15, i32 0, i32 0
  %17 = call i32 @drm_crtc_vblank_on(i32* %16)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_crtc_vblank_on(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
