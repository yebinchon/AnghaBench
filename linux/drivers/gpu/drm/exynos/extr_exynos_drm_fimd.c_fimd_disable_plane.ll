; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.exynos_drm_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @fimd_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_disable_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  store %struct.fimd_context* %9, %struct.fimd_context** %5, align 8
  %10 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %14 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fimd_enable_video_output(%struct.fimd_context* %19, i32 %20, i32 0)
  %22 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %23 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fimd_enable_shadow_channel_path(%struct.fimd_context* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %17, %28, %18
  ret void
}

declare dso_local i32 @fimd_enable_video_output(%struct.fimd_context*, i32, i32) #1

declare dso_local i32 @fimd_enable_shadow_channel_path(%struct.fimd_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
