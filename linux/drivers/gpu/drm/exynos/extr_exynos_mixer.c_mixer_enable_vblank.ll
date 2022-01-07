; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32 }

@MXR_BIT_VSYNC = common dso_local global i32 0, align 4
@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@MXR_INT_STATUS = common dso_local global i32 0, align 4
@MXR_INT_CLEAR_VSYNC = common dso_local global i32 0, align 4
@MXR_INT_EN = common dso_local global i32 0, align 4
@MXR_INT_EN_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*)* @mixer_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_enable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.mixer_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  store %struct.mixer_context* %7, %struct.mixer_context** %4, align 8
  %8 = load i32, i32* @MXR_BIT_VSYNC, align 4
  %9 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 0
  %11 = call i32 @__set_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @MXR_BIT_POWERED, align 4
  %13 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %14 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %20 = load i32, i32* @MXR_INT_STATUS, align 4
  %21 = load i32, i32* @MXR_INT_CLEAR_VSYNC, align 4
  %22 = call i32 @mixer_reg_writemask(%struct.mixer_context* %19, i32 %20, i32 -1, i32 %21)
  %23 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %24 = load i32, i32* @MXR_INT_EN, align 4
  %25 = load i32, i32* @MXR_INT_EN_VSYNC, align 4
  %26 = call i32 @mixer_reg_writemask(%struct.mixer_context* %23, i32 %24, i32 -1, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
