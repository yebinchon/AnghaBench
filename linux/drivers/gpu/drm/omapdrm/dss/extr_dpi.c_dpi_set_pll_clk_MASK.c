#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lck_div; int pck_div; } ;
struct TYPE_4__ {TYPE_2__ clock_info; } ;
struct dpi_data {TYPE_1__ mgr_config; int /*<<< orphan*/  clk_src; int /*<<< orphan*/  dss; int /*<<< orphan*/  pll; } ;
struct TYPE_6__ {unsigned long* clkout; } ;
struct dpi_clk_calc_ctx {size_t clkout_idx; TYPE_2__ dispc_cinfo; TYPE_3__ pll_cinfo; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dpi_data*,unsigned long,struct dpi_clk_calc_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dpi_data *dpi, enum omap_channel channel,
		unsigned long pck_req, unsigned long *fck, int *lck_div,
		int *pck_div)
{
	struct dpi_clk_calc_ctx ctx;
	int r;
	bool ok;

	ok = FUNC0(dpi, pck_req, &ctx);
	if (!ok)
		return -EINVAL;

	r = FUNC1(dpi->pll, &ctx.pll_cinfo);
	if (r)
		return r;

	FUNC2(dpi->dss, channel, dpi->clk_src);

	dpi->mgr_config.clock_info = ctx.dispc_cinfo;

	*fck = ctx.pll_cinfo.clkout[ctx.clkout_idx];
	*lck_div = ctx.dispc_cinfo.lck_div;
	*pck_div = ctx.dispc_cinfo.pck_div;

	return 0;
}