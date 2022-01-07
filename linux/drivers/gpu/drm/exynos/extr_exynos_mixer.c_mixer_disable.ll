; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32, i32, i32* }

@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@MIXER_WIN_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @mixer_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_disable(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  store %struct.mixer_context* %7, %struct.mixer_context** %3, align 8
  %8 = load i32, i32* @MXR_BIT_POWERED, align 4
  %9 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %16 = call i32 @mixer_stop(%struct.mixer_context* %15)
  %17 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %18 = call i32 @mixer_regs_dump(%struct.mixer_context* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MIXER_WIN_NR, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %25 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %26 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @mixer_disable_plane(%struct.exynos_drm_crtc* %24, i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %37 = call i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc* %36, i32 0)
  %38 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %39 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pm_runtime_put(i32 %40)
  %42 = load i32, i32* @MXR_BIT_POWERED, align 4
  %43 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %44 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %43, i32 0, i32 0
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mixer_stop(%struct.mixer_context*) #1

declare dso_local i32 @mixer_regs_dump(%struct.mixer_context*) #1

declare dso_local i32 @mixer_disable_plane(%struct.exynos_drm_crtc*, i32*) #1

declare dso_local i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
