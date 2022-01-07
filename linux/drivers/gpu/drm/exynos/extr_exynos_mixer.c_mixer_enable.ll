; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i32, i32 }

@MXR_BIT_POWERED = common dso_local global i32 0, align 4
@MXR_STATUS = common dso_local global i32 0, align 4
@MXR_STATUS_SOFT_RESET = common dso_local global i32 0, align 4
@MXR_BIT_VSYNC = common dso_local global i32 0, align 4
@MXR_INT_STATUS = common dso_local global i32 0, align 4
@MXR_INT_CLEAR_VSYNC = common dso_local global i32 0, align 4
@MXR_INT_EN = common dso_local global i32 0, align 4
@MXR_INT_EN_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @mixer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_enable(%struct.exynos_drm_crtc* %0) #0 {
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
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %15 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %19 = call i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc* %18, i32 1)
  %20 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %21 = call i32 @mixer_disable_sync(%struct.mixer_context* %20)
  %22 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %23 = load i32, i32* @MXR_STATUS, align 4
  %24 = load i32, i32* @MXR_STATUS_SOFT_RESET, align 4
  %25 = call i32 @mixer_reg_writemask(%struct.mixer_context* %22, i32 %23, i32 -1, i32 %24)
  %26 = load i32, i32* @MXR_BIT_VSYNC, align 4
  %27 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %28 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %13
  %32 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %33 = load i32, i32* @MXR_INT_STATUS, align 4
  %34 = load i32, i32* @MXR_INT_CLEAR_VSYNC, align 4
  %35 = call i32 @mixer_reg_writemask(%struct.mixer_context* %32, i32 %33, i32 -1, i32 %34)
  %36 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %37 = load i32, i32* @MXR_INT_EN, align 4
  %38 = load i32, i32* @MXR_INT_EN_VSYNC, align 4
  %39 = call i32 @mixer_reg_writemask(%struct.mixer_context* %36, i32 %37, i32 -1, i32 %38)
  br label %40

40:                                               ; preds = %31, %13
  %41 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %42 = call i32 @mixer_win_reset(%struct.mixer_context* %41)
  %43 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %44 = call i32 @mixer_commit(%struct.mixer_context* %43)
  %45 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %46 = call i32 @mixer_enable_sync(%struct.mixer_context* %45)
  %47 = load i32, i32* @MXR_BIT_POWERED, align 4
  %48 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %49 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %40, %12
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc*, i32) #1

declare dso_local i32 @mixer_disable_sync(%struct.mixer_context*) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @mixer_win_reset(%struct.mixer_context*) #1

declare dso_local i32 @mixer_commit(%struct.mixer_context*) #1

declare dso_local i32 @mixer_enable_sync(%struct.mixer_context*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
