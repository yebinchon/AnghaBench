#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hdmi_pll_8996 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct hdmi_8996_phy_pll_reg_cfg {int* tx_lx_tx_band; int* tx_lx_lane_mode; int com_svs_mode_clk_sel; int com_vco_tune_ctrl; int com_hsclk_sel; int com_lock_cmp_en; int com_pll_cctrl_mode0; int com_pll_rctrl_mode0; int com_cp_ctrl_mode0; int com_dec_start_mode0; int com_div_frac_start1_mode0; int com_div_frac_start2_mode0; int com_div_frac_start3_mode0; int com_integloop_gain0_mode0; int com_integloop_gain1_mode0; int com_lock_cmp1_mode0; int com_lock_cmp2_mode0; int com_lock_cmp3_mode0; int com_core_clk_en; int com_coreclk_div; int* tx_lx_tx_drv_lvl; int* tx_lx_tx_emp_post1_lvl; int* tx_lx_vmode_ctrl1; int* tx_lx_vmode_ctrl2; int* tx_lx_hp_pd_enables; int phy_mode; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int HDMI_NUM_TX_CHANNEL ; 
 int /*<<< orphan*/  REG_HDMI_8996_PHY_MODE ; 
 int /*<<< orphan*/  REG_HDMI_8996_PHY_PD_CTL ; 
 int /*<<< orphan*/  REG_HDMI_8996_PHY_TX0_TX1_LANE_CTL ; 
 int /*<<< orphan*/  REG_HDMI_8996_PHY_TX2_TX3_LANE_CTL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_BG_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_BG_TRIM ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_BIAS_EN_CLKBUFLR_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CLK_ENABLE1 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CLK_SELECT ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CMN_CONFIG ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CORECLK_DIV ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CORE_CLK_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_CP_CTRL_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_DEC_START_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START1_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START2_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START3_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_HSCLK_SEL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN0_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN1_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_PLL_CCTRL_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_PLL_IVCO ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_PLL_RCTRL_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_RESCODE_DIV_NUM ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_RESETSM_CNTRL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SVS_MODE_CLK_SEL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SYSCLK_BUF_ENABLE ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SYSCLK_EN_SEL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SYS_CLK_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_MAP ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_CLKBUF_ENABLE ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_HP_PD_ENABLES ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_PARRATE_REC_DETECT_IDLE_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_RESET_TSYNC_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_RES_CODE_LANE_OFFSET ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_TRAN_DRVR_EMP_EN ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_TX_BAND ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL_OFFSET ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_TX_EMP_POST1_LVL ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL1 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL2 ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_pll_8996*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_pll_8996*,int,int /*<<< orphan*/ ,int) ; 
 struct hdmi_pll_8996* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi_8996_phy_pll_reg_cfg*,int,int) ; 
 int FUNC7 (unsigned long,unsigned long,struct hdmi_8996_phy_pll_reg_cfg*) ; 
 struct hdmi_phy* FUNC8 (struct hdmi_pll_8996*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct clk_hw *hw, unsigned long rate,
				      unsigned long parent_rate)
{
	struct hdmi_pll_8996 *pll = FUNC5(hw);
	struct hdmi_phy *phy = FUNC8(pll);
	struct hdmi_8996_phy_pll_reg_cfg cfg;
	int i, ret;

	FUNC6(&cfg, 0x00, sizeof(cfg));

	ret = FUNC7(rate, parent_rate, &cfg);
	if (ret) {
		FUNC1("PLL calculation failed\n");
		return ret;
	}

	/* Initially shut down PHY */
	FUNC0("Disabling PHY");
	FUNC2(phy, REG_HDMI_8996_PHY_PD_CTL, 0x0);
	FUNC9(500);

	/* Power up sequence */
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_BG_CTRL, 0x04);

	FUNC2(phy, REG_HDMI_8996_PHY_PD_CTL, 0x1);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_RESETSM_CNTRL, 0x20);
	FUNC2(phy, REG_HDMI_8996_PHY_TX0_TX1_LANE_CTL, 0x0F);
	FUNC2(phy, REG_HDMI_8996_PHY_TX2_TX3_LANE_CTL, 0x0F);

	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_CLKBUF_ENABLE,
				   0x03);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_TX_BAND,
				   cfg.tx_lx_tx_band[i]);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_RESET_TSYNC_EN,
				   0x03);
	}

	FUNC4(pll, 0, REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE,
			   cfg.tx_lx_lane_mode[0]);
	FUNC4(pll, 2, REG_HDMI_PHY_QSERDES_TX_LX_LANE_MODE,
			   cfg.tx_lx_lane_mode[2]);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SYSCLK_BUF_ENABLE, 0x1E);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x07);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SYSCLK_EN_SEL, 0x37);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SYS_CLK_CTRL, 0x02);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CLK_ENABLE1, 0x0E);

	/* Bypass VCO calibration */
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SVS_MODE_CLK_SEL,
		       cfg.com_svs_mode_clk_sel);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_BG_TRIM, 0x0F);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_PLL_IVCO, 0x0F);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_CTRL,
		       cfg.com_vco_tune_ctrl);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_BG_CTRL, 0x06);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CLK_SELECT, 0x30);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_HSCLK_SEL,
		       cfg.com_hsclk_sel);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP_EN,
		       cfg.com_lock_cmp_en);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_PLL_CCTRL_MODE0,
		       cfg.com_pll_cctrl_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_PLL_RCTRL_MODE0,
		       cfg.com_pll_rctrl_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CP_CTRL_MODE0,
		       cfg.com_cp_ctrl_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_DEC_START_MODE0,
		       cfg.com_dec_start_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START1_MODE0,
		       cfg.com_div_frac_start1_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START2_MODE0,
		       cfg.com_div_frac_start2_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_DIV_FRAC_START3_MODE0,
		       cfg.com_div_frac_start3_mode0);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN0_MODE0,
		       cfg.com_integloop_gain0_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_INTEGLOOP_GAIN1_MODE0,
		       cfg.com_integloop_gain1_mode0);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0,
		       cfg.com_lock_cmp1_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0,
		       cfg.com_lock_cmp2_mode0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0,
		       cfg.com_lock_cmp3_mode0);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_VCO_TUNE_MAP, 0x00);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CORE_CLK_EN,
		       cfg.com_core_clk_en);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CORECLK_DIV,
		       cfg.com_coreclk_div);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_CMN_CONFIG, 0x02);

	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_RESCODE_DIV_NUM, 0x15);

	/* TX lanes setup (TX 0/1/2/3) */
	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL,
				   cfg.tx_lx_tx_drv_lvl[i]);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_TX_EMP_POST1_LVL,
				   cfg.tx_lx_tx_emp_post1_lvl[i]);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL1,
				   cfg.tx_lx_vmode_ctrl1[i]);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_VMODE_CTRL2,
				   cfg.tx_lx_vmode_ctrl2[i]);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_TX_DRV_LVL_OFFSET,
				   0x00);
		FUNC4(pll, i,
			REG_HDMI_PHY_QSERDES_TX_LX_RES_CODE_LANE_OFFSET,
			0x00);
		FUNC4(pll, i,
			REG_HDMI_PHY_QSERDES_TX_LX_TRAN_DRVR_EMP_EN,
			0x03);
		FUNC4(pll, i,
			REG_HDMI_PHY_QSERDES_TX_LX_PARRATE_REC_DETECT_IDLE_EN,
			0x40);
		FUNC4(pll, i,
				   REG_HDMI_PHY_QSERDES_TX_LX_HP_PD_ENABLES,
				   cfg.tx_lx_hp_pd_enables[i]);
	}

	FUNC2(phy, REG_HDMI_8996_PHY_MODE, cfg.phy_mode);
	FUNC2(phy, REG_HDMI_8996_PHY_PD_CTL, 0x1F);

	/*
	 * Ensure that vco configuration gets flushed to hardware before
	 * enabling the PLL
	 */
	FUNC10();

	return 0;
}