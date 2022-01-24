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
typedef  int u32 ;
struct fpga_manager {int /*<<< orphan*/  dev; struct a10_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;
struct a10_fpga_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  A10_FPGAMGR_IMGCFG_CTL_00_OFST ; 
 int A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG ; 
 int A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE ; 
 int A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG ; 
 int A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS ; 
 int /*<<< orphan*/  A10_FPGAMGR_IMGCFG_CTL_01_OFST ; 
 int A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG ; 
 int A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST ; 
 int A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL ; 
 int /*<<< orphan*/  A10_FPGAMGR_IMGCFG_CTL_02_OFST ; 
 int A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_MASK ; 
 int A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_SHIFT ; 
 int A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN ; 
 int A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN ; 
 unsigned int CFGWDTH_16 ; 
 int EINVAL ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct a10_fpga_priv*,int) ; 
 int FUNC4 (struct a10_fpga_priv*) ; 
 int FUNC5 (struct fpga_manager*,unsigned int,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct a10_fpga_priv*,unsigned int) ; 
 int FUNC7 (struct a10_fpga_priv*) ; 

__attribute__((used)) static int FUNC8(struct fpga_manager *mgr,
				       struct fpga_image_info *info,
				       const char *buf, size_t count)
{
	struct a10_fpga_priv *priv = mgr->priv;
	unsigned int cfg_width;
	u32 msel, stat, mask;
	int ret;

	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG)
		cfg_width = CFGWDTH_16;
	else
		return -EINVAL;

	/* Check for passive parallel (msel == 000 or 001) */
	msel = FUNC4(priv);
	msel &= A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_MASK;
	msel >>= A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_SHIFT;
	if ((msel != 0) && (msel != 1)) {
		FUNC0(&mgr->dev, "Fail: invalid msel=%d\n", msel);
		return -EINVAL;
	}

	/* Make sure no external devices are interfering */
	stat = FUNC4(priv);
	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN |
	       A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
	if ((stat & mask) != mask)
		return -EINVAL;

	/* Set cfg width */
	FUNC6(priv, cfg_width);

	/* Determine cd ratio from bitstream header and set cd ratio */
	ret = FUNC5(mgr, cfg_width, buf, count);
	if (ret)
		return ret;

	/*
	 * Clear s2f_nce to enable chip select.  Leave pr_request
	 * unasserted and override disabled.
	 */
	FUNC2(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
		     A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG);

	/* Set cfg_ctrl to enable s2f dclk and data */
	FUNC1(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_02_OFST,
			   A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL,
			   A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL);

	/*
	 * Disable overrides not needed for pr.
	 * s2f_config==1 leaves reset deasseted.
	 */
	FUNC2(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_00_OFST,
		     A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG |
		     A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS |
		     A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE |
		     A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG);

	/* Enable override for data, dclk, nce, and pr_request to CSS */
	FUNC1(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
			   A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, 0);

	/* Send some clocks to clear out any errors */
	FUNC3(priv, 256);

	/* Assert pr_request */
	FUNC1(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
			   A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST,
			   A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST);

	/* Provide 2048 DCLKs before starting the config data streaming. */
	FUNC3(priv, 0x7ff);

	/* Wait for pr_ready */
	return FUNC7(priv);
}