; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.vidi_context* }
%struct.vidi_context = type { i32, i64 }
%struct.exynos_drm_plane = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"dma_addr = %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @vidi_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidi_update_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vidi_context*, align 8
  %7 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %8 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  store %struct.drm_plane_state* %11, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.vidi_context*, %struct.vidi_context** %13, align 8
  store %struct.vidi_context* %14, %struct.vidi_context** %6, align 8
  %15 = load %struct.vidi_context*, %struct.vidi_context** %6, align 8
  %16 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exynos_drm_fb_dma_addr(i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vidi_context*, %struct.vidi_context** %6, align 8
  %26 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DRM_DEV_DEBUG_KMS(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %7)
  br label %29

29:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @exynos_drm_fb_dma_addr(i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
