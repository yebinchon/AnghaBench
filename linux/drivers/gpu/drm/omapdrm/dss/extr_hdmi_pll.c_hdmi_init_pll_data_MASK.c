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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dss_pll {char* name; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * hw; struct clk* clkin; int /*<<< orphan*/  base; int /*<<< orphan*/  id; } ;
struct hdmi_pll_data {TYPE_1__* wp; int /*<<< orphan*/  base; struct dss_pll pll; } ;
struct dss_device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSS_PLL_HDMI ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dss_omap4_hdmi_pll_hw ; 
 int /*<<< orphan*/  dss_omap5_hdmi_pll_hw ; 
 int FUNC4 (struct dss_device*,struct dss_pll*) ; 
 int /*<<< orphan*/  hdmi_pll_ops ; 

__attribute__((used)) static int FUNC5(struct dss_device *dss,
			      struct platform_device *pdev,
			      struct hdmi_pll_data *hpll)
{
	struct dss_pll *pll = &hpll->pll;
	struct clk *clk;
	int r;

	clk = FUNC3(&pdev->dev, "sys_clk");
	if (FUNC1(clk)) {
		FUNC0("can't get sys_clk\n");
		return FUNC2(clk);
	}

	pll->name = "hdmi";
	pll->id = DSS_PLL_HDMI;
	pll->base = hpll->base;
	pll->clkin = clk;

	if (hpll->wp->version == 4)
		pll->hw = &dss_omap4_hdmi_pll_hw;
	else
		pll->hw = &dss_omap5_hdmi_pll_hw;

	pll->ops = &hdmi_pll_ops;

	r = FUNC4(dss, pll);
	if (r)
		return r;

	return 0;
}