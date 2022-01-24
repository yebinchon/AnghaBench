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
struct dss_pll {char* name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  hw; int /*<<< orphan*/  base; struct clk* clkin; int /*<<< orphan*/  id; } ;
struct dss_device {int dummy; } ;
struct dsi_data {scalar_t__ module_id; TYPE_1__* data; int /*<<< orphan*/  pll_base; int /*<<< orphan*/  dev; struct dss_pll pll; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pll_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSS_PLL_DSI1 ; 
 int /*<<< orphan*/  DSS_PLL_DSI2 ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dsi_pll_ops ; 
 int FUNC4 (struct dss_device*,struct dss_pll*) ; 

__attribute__((used)) static int FUNC5(struct dss_device *dss, struct dsi_data *dsi)
{
	struct dss_pll *pll = &dsi->pll;
	struct clk *clk;
	int r;

	clk = FUNC3(dsi->dev, "sys_clk");
	if (FUNC1(clk)) {
		FUNC0("can't get sys_clk\n");
		return FUNC2(clk);
	}

	pll->name = dsi->module_id == 0 ? "dsi0" : "dsi1";
	pll->id = dsi->module_id == 0 ? DSS_PLL_DSI1 : DSS_PLL_DSI2;
	pll->clkin = clk;
	pll->base = dsi->pll_base;
	pll->hw = dsi->data->pll_hw;
	pll->ops = &dsi_pll_ops;

	r = FUNC4(dss, pll);
	if (r)
		return r;

	return 0;
}