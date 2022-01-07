; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.sun8i_hdmi_phy = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dw_hdmi*, %struct.sun8i_hdmi_phy*, i32)*, i64 }

@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_POL_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_POL_NVSYNC = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_POL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*, %struct.drm_display_mode*)* @sun8i_hdmi_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_hdmi_phy_config(%struct.dw_hdmi* %0, i8* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sun8i_hdmi_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sun8i_hdmi_phy*
  store %struct.sun8i_hdmi_phy* %10, %struct.sun8i_hdmi_phy** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_POL_NHSYNC, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_POL_NVSYNC, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %7, align 8
  %34 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_REG, align 4
  %37 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_POL_MASK, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %7, align 8
  %41 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %7, align 8
  %48 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = call i32 @clk_set_rate(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %46, %32
  %56 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %7, align 8
  %57 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dw_hdmi*, %struct.sun8i_hdmi_phy*, i32)*, i32 (%struct.dw_hdmi*, %struct.sun8i_hdmi_phy*, i32)** %59, align 8
  %61 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %62 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %7, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 1000
  %67 = call i32 %60(%struct.dw_hdmi* %61, %struct.sun8i_hdmi_phy* %62, i32 %66)
  ret i32 %67
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
