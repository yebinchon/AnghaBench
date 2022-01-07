; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun8i_phy_clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SUN8I_HDMI_PHY_PLL_CFG2_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_SHIFT = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sun8i_phy_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun8i_phy_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sun8i_phy_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.sun8i_phy_clk* @hw_to_phy_clk(%struct.clk_hw* %7)
  store %struct.sun8i_phy_clk* %8, %struct.sun8i_phy_clk** %5, align 8
  %9 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %5, align 8
  %10 = getelementptr inbounds %struct.sun8i_phy_clk, %struct.sun8i_phy_clk* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG2_REG, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK, align 4
  %20 = and i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %22, %24
  ret i64 %25
}

declare dso_local %struct.sun8i_phy_clk* @hw_to_phy_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
