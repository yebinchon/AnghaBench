; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_hdmi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_hdmi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8960 = type { i32 }
%struct.hdmi_phy = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_HDMI_8960_PHY_PLL_LOCKDET_CFG2 = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_PLL_LOCKDET_CFG0 = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_PLL_LOCKDET_CFG1 = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_REG12 = common dso_local global i32 0, align 4
@HDMI_8960_PHY_REG12_SW_RESET = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_REG2 = common dso_local global i32 0, align 4
@HDMI_8960_PHY_REG12_PWRDN_B = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_PLL_PWRDN_B = common dso_local global i32 0, align 4
@HDMI_8960_PHY_PLL_PWRDN_B_PLL_PWRDN_B = common dso_local global i32 0, align 4
@HDMI_8960_PHY_PLL_PWRDN_B_PD_PLL = common dso_local global i32 0, align 4
@REG_HDMI_8960_PHY_PLL_STATUS0 = common dso_local global i32 0, align 4
@HDMI_8960_PHY_PLL_STATUS0_PLL_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @hdmi_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hdmi_pll_8960*, align 8
  %4 = alloca %struct.hdmi_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.hdmi_pll_8960* @hw_clk_to_pll(%struct.clk_hw* %8)
  store %struct.hdmi_pll_8960* %9, %struct.hdmi_pll_8960** %3, align 8
  %10 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %11 = call %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8960* %10)
  store %struct.hdmi_phy* %11, %struct.hdmi_phy** %4, align 8
  store i32 10, i32* %6, align 4
  %12 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %14 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG2, align 4
  %15 = call i32 @pll_write(%struct.hdmi_pll_8960* %13, i32 %14, i32 141)
  %16 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %17 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG0, align 4
  %18 = call i32 @pll_write(%struct.hdmi_pll_8960* %16, i32 %17, i32 16)
  %19 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %20 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG1, align 4
  %21 = call i32 @pll_write(%struct.hdmi_pll_8960* %19, i32 %20, i32 26)
  %22 = call i32 @udelay(i32 10)
  %23 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %24 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG2, align 4
  %25 = call i32 @pll_write(%struct.hdmi_pll_8960* %23, i32 %24, i32 13)
  %26 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %27 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %28 = call i32 @hdmi_phy_read(%struct.hdmi_phy* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @HDMI_8960_PHY_REG12_SW_RESET, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %33 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @HDMI_8960_PHY_REG12_SW_RESET, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = call i32 @udelay(i32 10)
  %41 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %42 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %41, i32 %42, i32 %43)
  %45 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %46 = load i32, i32* @REG_HDMI_8960_PHY_REG2, align 4
  %47 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %45, i32 %46, i32 63)
  %48 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %49 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %50 = call i32 @hdmi_phy_read(%struct.hdmi_phy* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @HDMI_8960_PHY_REG12_PWRDN_B, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %55 = load i32, i32* @REG_HDMI_8960_PHY_REG12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %54, i32 %55, i32 %56)
  %58 = call i32 (...) @mb()
  %59 = call i32 @udelay(i32 10)
  %60 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %61 = load i32, i32* @REG_HDMI_8960_PHY_PLL_PWRDN_B, align 4
  %62 = call i32 @pll_read(%struct.hdmi_pll_8960* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @HDMI_8960_PHY_PLL_PWRDN_B_PLL_PWRDN_B, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @HDMI_8960_PHY_PLL_PWRDN_B_PD_PLL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %71 = load i32, i32* @REG_HDMI_8960_PHY_PLL_PWRDN_B, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @pll_write(%struct.hdmi_pll_8960* %70, i32 %71, i32 %72)
  %74 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %75 = load i32, i32* @REG_HDMI_8960_PHY_REG2, align 4
  %76 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %74, i32 %75, i32 128)
  store i32 1000, i32* %5, align 4
  br label %77

77:                                               ; preds = %96, %95, %1
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %83 = load i32, i32* @REG_HDMI_8960_PHY_PLL_STATUS0, align 4
  %84 = call i32 @pll_read(%struct.hdmi_pll_8960* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @HDMI_8960_PHY_PLL_STATUS0_PLL_LOCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %105

90:                                               ; preds = %81
  %91 = call i32 @udelay(i32 1)
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %77

96:                                               ; preds = %90
  %97 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %98 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG2, align 4
  %99 = call i32 @pll_write(%struct.hdmi_pll_8960* %97, i32 %98, i32 141)
  %100 = call i32 @udelay(i32 10)
  %101 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %3, align 8
  %102 = load i32, i32* @REG_HDMI_8960_PHY_PLL_LOCKDET_CFG2, align 4
  %103 = call i32 @pll_write(%struct.hdmi_pll_8960* %101, i32 %102, i32 13)
  %104 = call i32 @udelay(i32 350)
  store i32 1000, i32* %5, align 4
  br label %77

105:                                              ; preds = %89, %77
  ret i32 0
}

declare dso_local %struct.hdmi_pll_8960* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8960*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @pll_write(%struct.hdmi_pll_8960*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hdmi_phy_read(%struct.hdmi_phy*, i32) #1

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pll_read(%struct.hdmi_pll_8960*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
