; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_clear_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_clear_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32* }

@decon_clks_name = common dso_local global i32 0, align 4
@WINDOWS_NR = common dso_local global i32 0, align 4
@WINCONx_ENWIN_F = common dso_local global i32 0, align 4
@DECON_UPDATE = common dso_local global i32 0, align 4
@STANDALONE_UPDATE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_clear_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_clear_channels(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  store %struct.decon_context* %9, %struct.decon_context** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @decon_clks_name, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %17 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %55

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %33 = call i32 @decon_shadow_protect(%struct.decon_context* %32, i32 1)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %44, %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WINDOWS_NR, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @DECON_WINCONx(i32 %40)
  %42 = load i32, i32* @WINCONx_ENWIN_F, align 4
  %43 = call i32 @decon_set_bits(%struct.decon_context* %39, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %49 = call i32 @decon_shadow_protect(%struct.decon_context* %48, i32 0)
  %50 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %51 = load i32, i32* @DECON_UPDATE, align 4
  %52 = load i32, i32* @STANDALONE_UPDATE_F, align 4
  %53 = call i32 @decon_set_bits(%struct.decon_context* %50, i32 %51, i32 %52, i32 -1)
  %54 = call i32 @msleep(i32 50)
  br label %55

55:                                               ; preds = %47, %26
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %62 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clk_disable_unprepare(i32 %67)
  br label %56

69:                                               ; preds = %56
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @decon_shadow_protect(%struct.decon_context*, i32) #1

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i32, i32, i32) #1

declare dso_local i32 @DECON_WINCONx(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
