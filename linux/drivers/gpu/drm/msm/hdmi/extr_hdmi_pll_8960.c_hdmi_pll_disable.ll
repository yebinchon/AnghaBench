; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_hdmi_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_hdmi_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8960 = type { i32 }
%struct.hdmi_phy = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_HDMI_8960_PHY_REG12 = common dso_local global i32 0, align 4
@HDMI_8960_PHY_REG12_PWRDN_B = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_PLL_PWRDN_B = common dso_local global i32 0, align 4
@HDMI_8960_PHY_REG12_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @hdmi_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hdmi_pll_8960*, align 8
  %4 = alloca %struct.hdmi_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.hdmi_pll_8960* @hw_clk_to_pll(%struct.clk_hw* %6)
  store %struct.hdmi_pll_8960* %7, %struct.hdmi_pll_8960** %3, align 8
  %8 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %9 = call %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8960* %8)
  store %struct.hdmi_phy* %9, %struct.hdmi_phy** %4, align 8
  %10 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %12 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %13 = call i32 @hdmi_phy_read(%struct.hdmi_phy* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @HDMI_8960_PHY_REG12_PWRDN_B, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %19 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %18, i32 %19, i32 %20)
  %22 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %23 = load i32, i32* @REG_HDMI_8960_PHY_PLL_PWRDN_B, align 4
  %24 = call i32 @pll_read(%struct.hdmi_pll_8960* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @HDMI_8960_PHY_REG12_SW_RESET, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @HDMI_8960_PHY_REG12_PWRDN_B, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %33 = load i32, i32* @REG_HDMI_8960_PHY_PLL_PWRDN_B, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pll_write(%struct.hdmi_pll_8960* %32, i32 %33, i32 %34)
  %36 = call i32 (...) @mb()
  ret void
}

declare dso_local %struct.hdmi_pll_8960* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8960*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @hdmi_phy_read(%struct.hdmi_phy*, i32) #1

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @pll_read(%struct.hdmi_pll_8960*, i32) #1

declare dso_local i32 @pll_write(%struct.hdmi_pll_8960*, i32, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
