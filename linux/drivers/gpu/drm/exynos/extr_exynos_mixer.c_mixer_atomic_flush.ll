; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32 }

@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @mixer_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_atomic_flush(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.mixer_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %4 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  store %struct.mixer_context* %6, %struct.mixer_context** %3, align 8
  %7 = load i32, i32* @MXR_BIT_POWERED, align 4
  %8 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %9 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %15 = call i32 @mixer_enable_sync(%struct.mixer_context* %14)
  %16 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %17 = call i32 @exynos_crtc_handle_event(%struct.exynos_drm_crtc* %16)
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mixer_enable_sync(%struct.mixer_context*) #1

declare dso_local i32 @exynos_crtc_handle_event(%struct.exynos_drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
