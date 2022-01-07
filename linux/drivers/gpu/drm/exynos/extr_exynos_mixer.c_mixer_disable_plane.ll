; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32, i32, i32 }
%struct.exynos_drm_plane = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"win: %d\0A\00", align 1
@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @mixer_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_disable_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.mixer_context*, align 8
  %6 = alloca i64, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  store %struct.mixer_context* %9, %struct.mixer_context** %5, align 8
  %10 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %11 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MXR_BIT_POWERED, align 4
  %18 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %19 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %25 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %29 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mixer_cfg_layer(%struct.mixer_context* %28, i32 %31, i32 0, i32 0)
  %33 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %34 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mixer_cfg_layer(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
