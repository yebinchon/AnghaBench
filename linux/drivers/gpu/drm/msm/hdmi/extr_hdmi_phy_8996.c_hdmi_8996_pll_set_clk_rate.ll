; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_set_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_set_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8996 = type { i32 }
%struct.hdmi_phy = type { i32 }
%struct.hdmi_8996_phy_pll_reg_cfg = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"PLL calculation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Disabling PHY\00", align 1
@REG_HDMI_8996_PHY_PD_CTL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_BG_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_RESETSM_CNTRL = common dso_local global i32 0, align 4
@REG_HDMI_8996_PHY_TX0_TX1_LANE_CTL = common dso_local global i32 0, align 4
@REG_HDMI_8996_PHY_TX2_TX3_LANE_CTL = common dso_local global i32 0, align 4
@HDMI_NUM_TX_CHANNEL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_CLKBUF_ENABLE = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_TX_BAND = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_RESET_TSYNC_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SYSCLK_BUF_ENABLE = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_BIAS_EN_CLKBUFLR_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SYSCLK_EN_SEL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SYS_CLK_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CLK_ENABLE1 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_SVS_MODE_CLK_SEL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_BG_TRIM = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_PLL_IVCO = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CLK_SELECT = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_HSCLK_SEL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_PLL_CCTRL_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_PLL_RCTRL_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CP_CTRL_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_DEC_START_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START1_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START2_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START3_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN0_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN1_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_MAP = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CORE_CLK_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CORECLK_DIV = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_CMN_CONFIG = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_RESCODE_DIV_NUM = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_TX_EMP_POST1_LVL = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL1 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL2 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL_OFFSET = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_RES_CODE_LANE_OFFSET = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_TRAN_DRVR_EMP_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_PARRATE_REC_DETECT_IDLE_EN = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_TX_LX_HP_PD_ENABLES = common dso_local global i32 0, align 4
@REG_HDMI_8996_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @hdmi_8996_pll_set_clk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_8996_pll_set_clk_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hdmi_pll_8996*, align 8
  %9 = alloca %struct.hdmi_phy*, align 8
  %10 = alloca %struct.hdmi_8996_phy_pll_reg_cfg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw* %13)
  store %struct.hdmi_pll_8996* %14, %struct.hdmi_pll_8996** %8, align 8
  %15 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %16 = call %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996* %15)
  store %struct.hdmi_phy* %16, %struct.hdmi_phy** %9, align 8
  %17 = call i32 @memset(%struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 136)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @pll_calculate(i64 %18, i64 %19, %struct.hdmi_8996_phy_pll_reg_cfg* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %298

26:                                               ; preds = %3
  %27 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %29 = load i32, i32* @REG_HDMI_8996_PHY_PD_CTL, align 4
  %30 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %28, i32 %29, i32 0)
  %31 = call i32 @udelay(i32 500)
  %32 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %33 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_BG_CTRL, align 4
  %34 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %32, i32 %33, i32 4)
  %35 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %36 = load i32, i32* @REG_HDMI_8996_PHY_PD_CTL, align 4
  %37 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %35, i32 %36, i32 1)
  %38 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %39 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_RESETSM_CNTRL, align 4
  %40 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %38, i32 %39, i32 32)
  %41 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %42 = load i32, i32* @REG_HDMI_8996_PHY_TX0_TX1_LANE_CTL, align 4
  %43 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %41, i32 %42, i32 15)
  %44 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %45 = load i32, i32* @REG_HDMI_8996_PHY_TX2_TX3_LANE_CTL, align 4
  %46 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %44, i32 %45, i32 15)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %70, %26
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_CLKBUF_ENABLE, align 4
  %55 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %52, i32 %53, i32 %54, i32 3)
  %56 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_TX_BAND, align 4
  %59 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %56, i32 %57, i32 %58, i32 %64)
  %66 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_RESET_TSYNC_EN, align 4
  %69 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %66, i32 %67, i32 %68, i32 3)
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %75 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE, align 4
  %76 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %74, i32 0, i32 %75, i32 %79)
  %81 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %82 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE, align 4
  %83 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %81, i32 2, i32 %82, i32 %86)
  %88 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %89 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SYSCLK_BUF_ENABLE, align 4
  %90 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %88, i32 %89, i32 30)
  %91 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %92 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_BIAS_EN_CLKBUFLR_EN, align 4
  %93 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %91, i32 %92, i32 7)
  %94 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %95 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SYSCLK_EN_SEL, align 4
  %96 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %94, i32 %95, i32 55)
  %97 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %98 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SYS_CLK_CTRL, align 4
  %99 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %97, i32 %98, i32 2)
  %100 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %101 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CLK_ENABLE1, align 4
  %102 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %100, i32 %101, i32 14)
  %103 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %104 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_SVS_MODE_CLK_SEL, align 4
  %105 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %103, i32 %104, i32 %106)
  %108 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %109 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_BG_TRIM, align 4
  %110 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %108, i32 %109, i32 15)
  %111 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %112 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_PLL_IVCO, align 4
  %113 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %111, i32 %112, i32 15)
  %114 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %115 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_CTRL, align 4
  %116 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %114, i32 %115, i32 %117)
  %119 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %120 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_BG_CTRL, align 4
  %121 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %119, i32 %120, i32 6)
  %122 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %123 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CLK_SELECT, align 4
  %124 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %122, i32 %123, i32 48)
  %125 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %126 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_HSCLK_SEL, align 4
  %127 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %125, i32 %126, i32 %128)
  %130 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %131 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP_EN, align 4
  %132 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %130, i32 %131, i32 %133)
  %135 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %136 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_PLL_CCTRL_MODE0, align 4
  %137 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %135, i32 %136, i32 %138)
  %140 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %141 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_PLL_RCTRL_MODE0, align 4
  %142 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %140, i32 %141, i32 %143)
  %145 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %146 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CP_CTRL_MODE0, align 4
  %147 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %145, i32 %146, i32 %148)
  %150 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %151 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_DEC_START_MODE0, align 4
  %152 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %150, i32 %151, i32 %153)
  %155 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %156 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START1_MODE0, align 4
  %157 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %155, i32 %156, i32 %158)
  %160 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %161 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START2_MODE0, align 4
  %162 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %160, i32 %161, i32 %163)
  %165 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %166 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START3_MODE0, align 4
  %167 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %165, i32 %166, i32 %168)
  %170 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %171 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN0_MODE0, align 4
  %172 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 13
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %170, i32 %171, i32 %173)
  %175 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %176 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN1_MODE0, align 4
  %177 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 14
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %175, i32 %176, i32 %178)
  %180 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %181 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0, align 4
  %182 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 15
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %180, i32 %181, i32 %183)
  %185 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %186 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0, align 4
  %187 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 16
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %185, i32 %186, i32 %188)
  %190 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %191 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0, align 4
  %192 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 17
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %190, i32 %191, i32 %193)
  %195 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %196 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_MAP, align 4
  %197 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %195, i32 %196, i32 0)
  %198 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %199 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CORE_CLK_EN, align 4
  %200 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 18
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %198, i32 %199, i32 %201)
  %203 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %204 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CORECLK_DIV, align 4
  %205 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 19
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %203, i32 %204, i32 %206)
  %208 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %209 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_CMN_CONFIG, align 4
  %210 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %208, i32 %209, i32 2)
  %211 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %212 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_RESCODE_DIV_NUM, align 4
  %213 = call i32 @hdmi_pll_write(%struct.hdmi_pll_8996* %211, i32 %212, i32 21)
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %285, %73
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %288

218:                                              ; preds = %214
  %219 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL, align 4
  %222 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 20
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %219, i32 %220, i32 %221, i32 %227)
  %229 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_TX_EMP_POST1_LVL, align 4
  %232 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 21
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %229, i32 %230, i32 %231, i32 %237)
  %239 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL1, align 4
  %242 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 22
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %239, i32 %240, i32 %241, i32 %247)
  %249 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL2, align 4
  %252 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 23
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %249, i32 %250, i32 %251, i32 %257)
  %259 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL_OFFSET, align 4
  %262 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %259, i32 %260, i32 %261, i32 0)
  %263 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_RES_CODE_LANE_OFFSET, align 4
  %266 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %263, i32 %264, i32 %265, i32 0)
  %267 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_TRAN_DRVR_EMP_EN, align 4
  %270 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %267, i32 %268, i32 %269, i32 3)
  %271 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_PARRATE_REC_DETECT_IDLE_EN, align 4
  %274 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %271, i32 %272, i32 %273, i32 64)
  %275 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %8, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @REG_HDMI_PHY_QSERDES_TX_LX_HP_PD_ENABLES, align 4
  %278 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 24
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996* %275, i32 %276, i32 %277, i32 %283)
  br label %285

285:                                              ; preds = %218
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %214

288:                                              ; preds = %214
  %289 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %290 = load i32, i32* @REG_HDMI_8996_PHY_MODE, align 4
  %291 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %10, i32 0, i32 25
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %289, i32 %290, i32 %292)
  %294 = load %struct.hdmi_phy*, %struct.hdmi_phy** %9, align 8
  %295 = load i32, i32* @REG_HDMI_8996_PHY_PD_CTL, align 4
  %296 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %294, i32 %295, i32 31)
  %297 = call i32 (...) @wmb()
  store i32 0, i32* %4, align 4
  br label %298

298:                                              ; preds = %288, %23
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996*) #1

declare dso_local i32 @memset(%struct.hdmi_8996_phy_pll_reg_cfg*, i32, i32) #1

declare dso_local i32 @pll_calculate(i64, i64, %struct.hdmi_8996_phy_pll_reg_cfg*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hdmi_pll_write(%struct.hdmi_pll_8996*, i32, i32) #1

declare dso_local i32 @hdmi_tx_chan_write(%struct.hdmi_pll_8996*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
