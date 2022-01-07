; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_phy_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_phy_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { %struct.exynos_dsi_driver_data* }
%struct.exynos_dsi_driver_data = type { i32*, i64 }

@PHYCTRL_ULPS_EXIT = common dso_local global i64 0, align 8
@PHYCTRL_VREG_LP = common dso_local global i64 0, align 8
@PHYCTRL_SLEW_UP = common dso_local global i64 0, align 8
@DSIM_PHYCTRL_REG = common dso_local global i32 0, align 4
@PHYTIMING_LPX = common dso_local global i64 0, align 8
@PHYTIMING_HS_EXIT = common dso_local global i64 0, align 8
@DSIM_PHYTIMING_REG = common dso_local global i32 0, align 4
@PHYTIMING_CLK_PREPARE = common dso_local global i64 0, align 8
@PHYTIMING_CLK_ZERO = common dso_local global i64 0, align 8
@PHYTIMING_CLK_POST = common dso_local global i64 0, align 8
@PHYTIMING_CLK_TRAIL = common dso_local global i64 0, align 8
@DSIM_PHYTIMING1_REG = common dso_local global i32 0, align 4
@PHYTIMING_HS_PREPARE = common dso_local global i64 0, align 8
@PHYTIMING_HS_ZERO = common dso_local global i64 0, align 8
@PHYTIMING_HS_TRAIL = common dso_local global i64 0, align 8
@DSIM_PHYTIMING2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*)* @exynos_dsi_set_phy_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_set_phy_ctrl(%struct.exynos_dsi* %0) #0 {
  %2 = alloca %struct.exynos_dsi*, align 8
  %3 = alloca %struct.exynos_dsi_driver_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %2, align 8
  %6 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %7 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %6, i32 0, i32 0
  %8 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %7, align 8
  store %struct.exynos_dsi_driver_data* %8, %struct.exynos_dsi_driver_data** %3, align 8
  %9 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %90

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* @PHYCTRL_ULPS_EXIT, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* @PHYCTRL_VREG_LP, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @PHYCTRL_SLEW_UP, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %26, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %33 = load i32, i32* @DSIM_PHYCTRL_REG, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @PHYTIMING_LPX, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* @PHYTIMING_HS_EXIT, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %39, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %46 = load i32, i32* @DSIM_PHYTIMING_REG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* @PHYTIMING_CLK_PREPARE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @PHYTIMING_CLK_ZERO, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %52, %56
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* @PHYTIMING_CLK_POST, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %57, %61
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* @PHYTIMING_CLK_TRAIL, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %62, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %69 = load i32, i32* @DSIM_PHYTIMING1_REG, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* @PHYTIMING_HS_PREPARE, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i64, i64* @PHYTIMING_HS_ZERO, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %75, %79
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* @PHYTIMING_HS_TRAIL, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %80, %84
  store i32 %85, i32* %5, align 4
  %86 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %87 = load i32, i32* @DSIM_PHYTIMING2_REG, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
