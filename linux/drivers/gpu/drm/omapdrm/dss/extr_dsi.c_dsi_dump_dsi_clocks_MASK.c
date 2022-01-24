#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct dsi_data* private; } ;
struct dss_pll_clock_info {int clkdco; int /*<<< orphan*/ * mX; int /*<<< orphan*/ * clkout; int /*<<< orphan*/  m; int /*<<< orphan*/  n; int /*<<< orphan*/  fint; } ;
struct dss_pll {int /*<<< orphan*/  clkin; struct dss_pll_clock_info cinfo; } ;
struct TYPE_2__ {int lp_clk; } ;
struct dsi_data {int module_id; TYPE_1__ current_lp_cinfo; int /*<<< orphan*/  dss; struct dss_pll pll; } ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
 int DSS_CLK_SRC_FCK ; 
 int DSS_CLK_SRC_PLL1_1 ; 
 int DSS_CLK_SRC_PLL1_2 ; 
 int DSS_CLK_SRC_PLL2_1 ; 
 int DSS_CLK_SRC_PLL2_2 ; 
 size_t HSDIV_DISPC ; 
 size_t HSDIV_DSI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dsi_data*) ; 
 int FUNC2 (struct dsi_data*) ; 
 scalar_t__ FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static int FUNC9(struct seq_file *s, void *p)
{
	struct dsi_data *dsi = s->private;
	struct dss_pll_clock_info *cinfo = &dsi->pll.cinfo;
	enum dss_clk_source dispc_clk_src, dsi_clk_src;
	int dsi_module = dsi->module_id;
	struct dss_pll *pll = &dsi->pll;

	dispc_clk_src = FUNC6(dsi->dss);
	dsi_clk_src = FUNC7(dsi->dss, dsi_module);

	if (FUNC3(dsi))
		return 0;

	FUNC8(s,	"- DSI%d PLL -\n", dsi_module + 1);

	FUNC8(s,	"dsi pll clkin\t%lu\n", FUNC0(pll->clkin));

	FUNC8(s,	"Fint\t\t%-16lun %u\n", cinfo->fint, cinfo->n);

	FUNC8(s,	"CLKIN4DDR\t%-16lum %u\n",
			cinfo->clkdco, cinfo->m);

	FUNC8(s,	"DSI_PLL_HSDIV_DISPC (%s)\t%-16lum_dispc %u\t(%s)\n",
			FUNC5(dsi_module == 0 ?
				DSS_CLK_SRC_PLL1_1 :
				DSS_CLK_SRC_PLL2_1),
			cinfo->clkout[HSDIV_DISPC],
			cinfo->mX[HSDIV_DISPC],
			dispc_clk_src == DSS_CLK_SRC_FCK ?
			"off" : "on");

	FUNC8(s,	"DSI_PLL_HSDIV_DSI (%s)\t%-16lum_dsi %u\t(%s)\n",
			FUNC5(dsi_module == 0 ?
				DSS_CLK_SRC_PLL1_2 :
				DSS_CLK_SRC_PLL2_2),
			cinfo->clkout[HSDIV_DSI],
			cinfo->mX[HSDIV_DSI],
			dsi_clk_src == DSS_CLK_SRC_FCK ?
			"off" : "on");

	FUNC8(s,	"- DSI%d -\n", dsi_module + 1);

	FUNC8(s,	"dsi fclk source = %s\n",
			FUNC5(dsi_clk_src));

	FUNC8(s,	"DSI_FCLK\t%lu\n", FUNC1(dsi));

	FUNC8(s,	"DDR_CLK\t\t%lu\n",
			cinfo->clkdco / 4);

	FUNC8(s,	"TxByteClkHS\t%lu\n", FUNC2(dsi));

	FUNC8(s,	"LP_CLK\t\t%lu\n", dsi->current_lp_cinfo.lp_clk);

	FUNC4(dsi);

	return 0;
}