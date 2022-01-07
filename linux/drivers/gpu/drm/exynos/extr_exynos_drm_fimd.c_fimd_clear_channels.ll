; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_clear_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_clear_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@WINDOWS_NR = common dso_local global i32 0, align 4
@WINCONx_ENWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @fimd_clear_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_clear_channels(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.fimd_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  store %struct.fimd_context* %9, %struct.fimd_context** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %11 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %15 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_prepare_enable(i32 %16)
  %18 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %19 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %54, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WINDOWS_NR, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %28 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @WINCON(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @WINCONx_ENWIN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @fimd_enable_video_output(%struct.fimd_context* %39, i32 %40, i32 0)
  %42 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %43 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @fimd_enable_shadow_channel_path(%struct.fimd_context* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %48, %38
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %62 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %64 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fimd_enable_vblank(i32 %65)
  %67 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %68 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @fimd_wait_for_vblank(i32 %69)
  %71 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %72 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @fimd_disable_vblank(i32 %73)
  %75 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %76 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %60, %57
  %78 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %79 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  %82 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %83 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @clk_disable_unprepare(i32 %84)
  %86 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %87 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put(i32 %88)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @fimd_enable_video_output(%struct.fimd_context*, i32, i32) #1

declare dso_local i32 @fimd_enable_shadow_channel_path(%struct.fimd_context*, i32, i32) #1

declare dso_local i32 @fimd_enable_vblank(i32) #1

declare dso_local i32 @fimd_wait_for_vblank(i32) #1

declare dso_local i32 @fimd_disable_vblank(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
