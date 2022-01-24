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
struct dw_mipi_dsi_stm {int lane_min_kbps; int lane_max_kbps; scalar_t__ hw_version; int /*<<< orphan*/  pllref_clk; } ;
struct drm_display_mode {int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DSI_WCFGR ; 
 int /*<<< orphan*/  DSI_WPCR0 ; 
 int /*<<< orphan*/  DSI_WRPCR ; 
 scalar_t__ HWVER_131 ; 
 int LANE_MAX_KBPS ; 
 int LANE_MIN_KBPS ; 
 int WCFGR_COLMUX ; 
 int /*<<< orphan*/  WCFGR_DSIM ; 
 int WPCR0_UIX4 ; 
 int WRPCR_IDF ; 
 int WRPCR_NDIV ; 
 int WRPCR_ODF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mipi_dsi_stm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC6 (struct dw_mipi_dsi_stm*,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_mipi_dsi_stm*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(void *priv_data, const struct drm_display_mode *mode,
			  unsigned long mode_flags, u32 lanes, u32 format,
			  unsigned int *lane_mbps)
{
	struct dw_mipi_dsi_stm *dsi = priv_data;
	unsigned int idf, ndiv, odf, pll_in_khz, pll_out_khz;
	int ret, bpp;
	u32 val;

	/* Update lane capabilities according to hw version */
	dsi->lane_min_kbps = LANE_MIN_KBPS;
	dsi->lane_max_kbps = LANE_MAX_KBPS;
	if (dsi->hw_version == HWVER_131) {
		dsi->lane_min_kbps *= 2;
		dsi->lane_max_kbps *= 2;
	}

	pll_in_khz = (unsigned int)(FUNC2(dsi->pllref_clk) / 1000);

	/* Compute requested pll out */
	bpp = FUNC9(format);
	pll_out_khz = mode->clock * bpp / lanes;
	/* Add 20% to pll out to be higher than pixel bw (burst mode only) */
	pll_out_khz = (pll_out_khz * 12) / 10;
	if (pll_out_khz > dsi->lane_max_kbps) {
		pll_out_khz = dsi->lane_max_kbps;
		FUNC1("Warning max phy mbps is used\n");
	}
	if (pll_out_khz < dsi->lane_min_kbps) {
		pll_out_khz = dsi->lane_min_kbps;
		FUNC1("Warning min phy mbps is used\n");
	}

	/* Compute best pll parameters */
	idf = 0;
	ndiv = 0;
	odf = 0;
	ret = FUNC6(dsi, pll_in_khz, pll_out_khz,
				 &idf, &ndiv, &odf);
	if (ret)
		FUNC1("Warning dsi_pll_get_params(): bad params\n");

	/* Get the adjusted pll out value */
	pll_out_khz = FUNC5(pll_in_khz, idf, ndiv, odf);

	/* Set the PLL division factors */
	FUNC7(dsi, DSI_WRPCR,	WRPCR_NDIV | WRPCR_IDF | WRPCR_ODF,
			(ndiv << 2) | (idf << 11) | ((FUNC8(odf) - 1) << 16));

	/* Compute uix4 & set the bit period in high-speed mode */
	val = 4000000 / pll_out_khz;
	FUNC7(dsi, DSI_WPCR0, WPCR0_UIX4, val);

	/* Select video mode by resetting DSIM bit */
	FUNC3(dsi, DSI_WCFGR, WCFGR_DSIM);

	/* Select the color coding */
	FUNC7(dsi, DSI_WCFGR, WCFGR_COLMUX,
			FUNC4(format) << 1);

	*lane_mbps = pll_out_khz / 1000;

	FUNC0("pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\n",
			 pll_in_khz, pll_out_khz, *lane_mbps);

	return 0;
}