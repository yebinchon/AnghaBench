#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * init; } ;
struct hdmi_pll_8960 {TYPE_2__ clk_hw; struct platform_device* pdev; struct clk* mmio; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct clk* FUNC4 (struct device*,TYPE_2__*) ; 
 struct hdmi_pll_8960* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* freqtbl ; 
 struct clk* FUNC6 (struct platform_device*,char*,char*) ; 
 int /*<<< orphan*/  pll_init ; 

int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct hdmi_pll_8960 *pll;
	struct clk *clk;
	int i;

	/* sanity check: */
	for (i = 0; i < (FUNC0(freqtbl) - 1); i++)
		if (FUNC3(freqtbl[i].rate < freqtbl[i + 1].rate))
			return -EINVAL;

	pll = FUNC5(dev, sizeof(*pll), GFP_KERNEL);
	if (!pll)
		return -ENOMEM;

	pll->mmio = FUNC6(pdev, "hdmi_pll", "HDMI_PLL");
	if (FUNC2(pll->mmio)) {
		FUNC1(dev, "failed to map pll base\n");
		return -ENOMEM;
	}

	pll->pdev = pdev;
	pll->clk_hw.init = &pll_init;

	clk = FUNC4(dev, &pll->clk_hw);
	if (FUNC2(clk)) {
		FUNC1(dev, "failed to register pll clock\n");
		return -EINVAL;
	}

	return 0;
}