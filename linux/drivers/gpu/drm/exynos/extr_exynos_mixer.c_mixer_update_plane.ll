; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32, i32 }
%struct.exynos_drm_plane = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"win: %d\0A\00", align 1
@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@VP_DEFAULT_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @mixer_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_update_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.mixer_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %6 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.mixer_context*, %struct.mixer_context** %7, align 8
  store %struct.mixer_context* %8, %struct.mixer_context** %5, align 8
  %9 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %13 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRM_DEV_DEBUG_KMS(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @MXR_BIT_POWERED, align 4
  %17 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %18 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VP_DEFAULT_WIN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %30 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %31 = call i32 @vp_video_buffer(%struct.mixer_context* %29, %struct.exynos_drm_plane* %30)
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %34 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %35 = call i32 @mixer_graph_buffer(%struct.mixer_context* %33, %struct.exynos_drm_plane* %34)
  br label %36

36:                                               ; preds = %21, %32, %28
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vp_video_buffer(%struct.mixer_context*, %struct.exynos_drm_plane*) #1

declare dso_local i32 @mixer_graph_buffer(%struct.mixer_context*, %struct.exynos_drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
