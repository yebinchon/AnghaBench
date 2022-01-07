; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8996 = type { i32 }
%struct.hdmi_phy = type { i32 }

@REG_HDMI_8996_PHY_CFG = common dso_local global i32 0, align 4
@HDMI_NUM_TX_CHANNEL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SSC_PER1 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SSC_PER2 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @hdmi_8996_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_8996_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.hdmi_pll_8996*, align 8
  %5 = alloca %struct.hdmi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw* %8)
  store %struct.hdmi_pll_8996* %9, %struct.hdmi_pll_8996** %4, align 8
  %10 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %11 = call %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996* %10)
  store %struct.hdmi_phy* %11, %struct.hdmi_phy** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %13 = load i32, i32* @REG_HDMI_8996_PHY_CFG, align 4
  %14 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %12, i32 %13, i32 1)
  %15 = call i32 @udelay(i32 100)
  %16 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %17 = load i32, i32* @REG_HDMI_8996_PHY_CFG, align 4
  %18 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %16, i32 %17, i32 25)
  %19 = call i32 @udelay(i32 100)
  %20 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %21 = call i32 @hdmi_8996_pll_lock_status(%struct.hdmi_pll_8996* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, align 4
  %35 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %32, i32 %33, i32 %34, i32 111)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %41 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SSC_PER1, align 4
  %42 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %40, i32 %41, i32 0)
  %43 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %44 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SSC_PER2, align 4
  %45 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %43, i32 %44, i32 0)
  %46 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %47 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1, align 4
  %48 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %46, i32 %47, i32 0)
  %49 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %50 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2, align 4
  %51 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %49, i32 %50, i32 0)
  %52 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %4, align 8
  %53 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER, align 4
  %54 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %52, i32 %53, i32 2)
  %55 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %56 = call i32 @hdmi_8996_phy_ready_status(%struct.hdmi_phy* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %69

61:                                               ; preds = %39
  %62 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %63 = load i32, i32* @REG_HDMI_8996_PHY_CFG, align 4
  %64 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %62, i32 %63, i32 24)
  %65 = call i32 @udelay(i32 1)
  %66 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %67 = load i32, i32* @REG_HDMI_8996_PHY_CFG, align 4
  %68 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %66, i32 %67, i32 25)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %59, %24
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996*) #1

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hdmi_8996_pll_lock_status(%struct.hdmi_pll_8996*) #1

declare dso_local i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996*, i32, i32, i32) #1

declare dso_local i32 @hdmi_pll_write(%struct.hdmi_pll_8996*, i32, i32) #1

declare dso_local i32 @hdmi_8996_phy_ready_status(%struct.hdmi_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
