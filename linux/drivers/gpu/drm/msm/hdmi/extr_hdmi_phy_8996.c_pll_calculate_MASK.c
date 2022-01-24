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
typedef  int u64 ;
typedef  int u32 ;
struct hdmi_8996_post_divider {int vco_freq; int vco_ratio; int hsclk_divsel; int tx_band_sel; } ;
struct hdmi_8996_phy_pll_reg_cfg {int com_svs_mode_clk_sel; int com_hsclk_sel; int com_pll_cctrl_mode0; int com_pll_rctrl_mode0; int com_cp_ctrl_mode0; int com_dec_start_mode0; int com_div_frac_start1_mode0; int com_div_frac_start2_mode0; int com_div_frac_start3_mode0; int com_integloop_gain0_mode0; int com_integloop_gain1_mode0; int com_lock_cmp1_mode0; int com_lock_cmp2_mode0; int com_lock_cmp3_mode0; int com_lock_cmp_en; int com_core_clk_en; int phy_mode; int com_vco_tune_ctrl; int* tx_lx_lane_mode; int* tx_lx_hp_pd_enables; int* tx_lx_tx_band; int* tx_lx_tx_drv_lvl; int* tx_lx_tx_emp_post1_lvl; int* tx_lx_vmode_ctrl1; int* tx_lx_vmode_ctrl2; int /*<<< orphan*/  com_coreclk_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  HDMI_CORECLK_DIV ; 
 int HDMI_DIG_FREQ_BIT_CLK_THRESHOLD ; 
 int HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD ; 
 int HDMI_MID_FREQ_BIT_CLK_THRESHOLD ; 
 int HDMI_NUM_TX_CHANNEL ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,unsigned long,int) ; 
 int FUNC4 (int,int,unsigned long,int) ; 
 int FUNC5 (int,unsigned long) ; 
 int FUNC6 (struct hdmi_8996_post_divider*,int) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(unsigned long pix_clk, unsigned long ref_clk,
			 struct hdmi_8996_phy_pll_reg_cfg *cfg)
{
	struct hdmi_8996_post_divider pd;
	u64 bclk;
	u64 tmds_clk;
	u64 dec_start;
	u64 frac_start;
	u64 fdata;
	u32 pll_divisor;
	u32 rem;
	u32 cpctrl;
	u32 rctrl;
	u32 cctrl;
	u32 integloop_gain;
	u32 pll_cmp;
	int i, ret;

	/* bit clk = 10 * pix_clk */
	bclk = ((u64)pix_clk) * 10;

	if (bclk > HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD)
		tmds_clk = pix_clk >> 2;
	else
		tmds_clk = pix_clk;

	ret = FUNC6(&pd, bclk);
	if (ret)
		return ret;

	dec_start = pd.vco_freq;
	pll_divisor = 4 * ref_clk;
	FUNC1(dec_start, pll_divisor);

	frac_start = pd.vco_freq * (1 << 20);

	rem = FUNC1(frac_start, pll_divisor);
	frac_start -= dec_start * (1 << 20);
	if (rem > (pll_divisor >> 1))
		frac_start++;

	cpctrl = FUNC3(frac_start, ref_clk, false);
	rctrl = FUNC7(frac_start, false);
	cctrl = FUNC2(frac_start, false);
	integloop_gain = FUNC4(frac_start, bclk,
						ref_clk, false);

	fdata = pd.vco_freq;
	FUNC1(fdata, pd.vco_ratio);

	pll_cmp = FUNC5(fdata, ref_clk);

	FUNC0("VCO freq: %llu", pd.vco_freq);
	FUNC0("fdata: %llu", fdata);
	FUNC0("pix_clk: %lu", pix_clk);
	FUNC0("tmds clk: %llu", tmds_clk);
	FUNC0("HSCLK_SEL: %d", pd.hsclk_divsel);
	FUNC0("DEC_START: %llu", dec_start);
	FUNC0("DIV_FRAC_START: %llu", frac_start);
	FUNC0("PLL_CPCTRL: %u", cpctrl);
	FUNC0("PLL_RCTRL: %u", rctrl);
	FUNC0("PLL_CCTRL: %u", cctrl);
	FUNC0("INTEGLOOP_GAIN: %u", integloop_gain);
	FUNC0("TX_BAND: %d", pd.tx_band_sel);
	FUNC0("PLL_CMP: %u", pll_cmp);

	/* Convert these values to register specific values */
	if (bclk > HDMI_DIG_FREQ_BIT_CLK_THRESHOLD)
		cfg->com_svs_mode_clk_sel = 1;
	else
		cfg->com_svs_mode_clk_sel = 2;

	cfg->com_hsclk_sel = (0x20 | pd.hsclk_divsel);
	cfg->com_pll_cctrl_mode0 = cctrl;
	cfg->com_pll_rctrl_mode0 = rctrl;
	cfg->com_cp_ctrl_mode0 = cpctrl;
	cfg->com_dec_start_mode0 = dec_start;
	cfg->com_div_frac_start1_mode0 = (frac_start & 0xff);
	cfg->com_div_frac_start2_mode0 = ((frac_start & 0xff00) >> 8);
	cfg->com_div_frac_start3_mode0 = ((frac_start & 0xf0000) >> 16);
	cfg->com_integloop_gain0_mode0 = (integloop_gain & 0xff);
	cfg->com_integloop_gain1_mode0 = ((integloop_gain & 0xf00) >> 8);
	cfg->com_lock_cmp1_mode0 = (pll_cmp & 0xff);
	cfg->com_lock_cmp2_mode0 = ((pll_cmp & 0xff00) >> 8);
	cfg->com_lock_cmp3_mode0 = ((pll_cmp & 0x30000) >> 16);
	cfg->com_lock_cmp_en = 0x0;
	cfg->com_core_clk_en = 0x2c;
	cfg->com_coreclk_div = HDMI_CORECLK_DIV;
	cfg->phy_mode = (bclk > HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD) ? 0x10 : 0x0;
	cfg->com_vco_tune_ctrl = 0x0;

	cfg->tx_lx_lane_mode[0] =
		cfg->tx_lx_lane_mode[2] = 0x43;

	cfg->tx_lx_hp_pd_enables[0] =
		cfg->tx_lx_hp_pd_enables[1] =
		cfg->tx_lx_hp_pd_enables[2] = 0x0c;
	cfg->tx_lx_hp_pd_enables[3] = 0x3;

	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++)
		cfg->tx_lx_tx_band[i] = pd.tx_band_sel + 4;

	if (bclk > HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD) {
		cfg->tx_lx_tx_drv_lvl[0] =
			cfg->tx_lx_tx_drv_lvl[1] =
			cfg->tx_lx_tx_drv_lvl[2] = 0x25;
		cfg->tx_lx_tx_drv_lvl[3] = 0x22;

		cfg->tx_lx_tx_emp_post1_lvl[0] =
			cfg->tx_lx_tx_emp_post1_lvl[1] =
			cfg->tx_lx_tx_emp_post1_lvl[2] = 0x23;
		cfg->tx_lx_tx_emp_post1_lvl[3] = 0x27;

		cfg->tx_lx_vmode_ctrl1[0] =
			cfg->tx_lx_vmode_ctrl1[1] =
			cfg->tx_lx_vmode_ctrl1[2] =
			cfg->tx_lx_vmode_ctrl1[3] = 0x00;

		cfg->tx_lx_vmode_ctrl2[0] =
			cfg->tx_lx_vmode_ctrl2[1] =
			cfg->tx_lx_vmode_ctrl2[2] = 0x0D;

		cfg->tx_lx_vmode_ctrl2[3] = 0x00;
	} else if (bclk > HDMI_MID_FREQ_BIT_CLK_THRESHOLD) {
		for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
			cfg->tx_lx_tx_drv_lvl[i] = 0x25;
			cfg->tx_lx_tx_emp_post1_lvl[i] = 0x23;
			cfg->tx_lx_vmode_ctrl1[i] = 0x00;
		}

		cfg->tx_lx_vmode_ctrl2[0] =
			cfg->tx_lx_vmode_ctrl2[1] =
			cfg->tx_lx_vmode_ctrl2[2] = 0x0D;
		cfg->tx_lx_vmode_ctrl2[3] = 0x00;
	} else {
		for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
			cfg->tx_lx_tx_drv_lvl[i] = 0x20;
			cfg->tx_lx_tx_emp_post1_lvl[i] = 0x20;
			cfg->tx_lx_vmode_ctrl1[i] = 0x00;
			cfg->tx_lx_vmode_ctrl2[i] = 0x0E;
		}
	}

	FUNC0("com_svs_mode_clk_sel = 0x%x", cfg->com_svs_mode_clk_sel);
	FUNC0("com_hsclk_sel = 0x%x", cfg->com_hsclk_sel);
	FUNC0("com_lock_cmp_en = 0x%x", cfg->com_lock_cmp_en);
	FUNC0("com_pll_cctrl_mode0 = 0x%x", cfg->com_pll_cctrl_mode0);
	FUNC0("com_pll_rctrl_mode0 = 0x%x", cfg->com_pll_rctrl_mode0);
	FUNC0("com_cp_ctrl_mode0 = 0x%x", cfg->com_cp_ctrl_mode0);
	FUNC0("com_dec_start_mode0 = 0x%x", cfg->com_dec_start_mode0);
	FUNC0("com_div_frac_start1_mode0 = 0x%x", cfg->com_div_frac_start1_mode0);
	FUNC0("com_div_frac_start2_mode0 = 0x%x", cfg->com_div_frac_start2_mode0);
	FUNC0("com_div_frac_start3_mode0 = 0x%x", cfg->com_div_frac_start3_mode0);
	FUNC0("com_integloop_gain0_mode0 = 0x%x", cfg->com_integloop_gain0_mode0);
	FUNC0("com_integloop_gain1_mode0 = 0x%x", cfg->com_integloop_gain1_mode0);
	FUNC0("com_lock_cmp1_mode0 = 0x%x", cfg->com_lock_cmp1_mode0);
	FUNC0("com_lock_cmp2_mode0 = 0x%x", cfg->com_lock_cmp2_mode0);
	FUNC0("com_lock_cmp3_mode0 = 0x%x", cfg->com_lock_cmp3_mode0);
	FUNC0("com_core_clk_en = 0x%x", cfg->com_core_clk_en);
	FUNC0("com_coreclk_div = 0x%x", cfg->com_coreclk_div);
	FUNC0("phy_mode = 0x%x", cfg->phy_mode);

	FUNC0("tx_l0_lane_mode = 0x%x", cfg->tx_lx_lane_mode[0]);
	FUNC0("tx_l2_lane_mode = 0x%x", cfg->tx_lx_lane_mode[2]);

	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
		FUNC0("tx_l%d_tx_band = 0x%x", i, cfg->tx_lx_tx_band[i]);
		FUNC0("tx_l%d_tx_drv_lvl = 0x%x", i, cfg->tx_lx_tx_drv_lvl[i]);
		FUNC0("tx_l%d_tx_emp_post1_lvl = 0x%x", i,
		    cfg->tx_lx_tx_emp_post1_lvl[i]);
		FUNC0("tx_l%d_vmode_ctrl1 = 0x%x", i, cfg->tx_lx_vmode_ctrl1[i]);
		FUNC0("tx_l%d_vmode_ctrl2 = 0x%x", i, cfg->tx_lx_vmode_ctrl2[i]);
	}

	return 0;
}