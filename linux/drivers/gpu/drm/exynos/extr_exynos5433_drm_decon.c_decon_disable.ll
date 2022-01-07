; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32, i32, i32, i32*, i32, i32 }

@I80_HW_TRG = common dso_local global i32 0, align 4
@WINDOWS_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_disable(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  store %struct.decon_context* %7, %struct.decon_context** %3, align 8
  %8 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %9 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I80_HW_TRG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %16 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @synchronize_irq(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %21 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @synchronize_irq(i32 %22)
  %24 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %25 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %40, %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @WINDOWS_NR, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %33 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %34 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @decon_disable_plane(%struct.exynos_drm_crtc* %32, i32* %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %45 = call i32 @decon_swreset(%struct.decon_context* %44)
  %46 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %47 = call i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc* %46, i32 0)
  %48 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %49 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pm_runtime_put_sync(i32 %50)
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @decon_disable_plane(%struct.exynos_drm_crtc*, i32*) #1

declare dso_local i32 @decon_swreset(%struct.decon_context*) #1

declare dso_local i32 @exynos_drm_pipe_clk_enable(%struct.exynos_drm_crtc*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
