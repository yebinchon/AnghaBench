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
struct hdmi_phy_cfg {int num_regs; int num_clks; int /*<<< orphan*/ * clk_names; int /*<<< orphan*/ * reg_names; } ;
struct hdmi_phy {int /*<<< orphan*/ * clks; int /*<<< orphan*/ * regs; TYPE_1__* pdev; struct hdmi_phy_cfg* cfg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct hdmi_phy *phy)
{
	struct hdmi_phy_cfg *cfg = phy->cfg;
	struct device *dev = &phy->pdev->dev;
	int i, ret = 0;

	FUNC2(dev);

	for (i = 0; i < cfg->num_regs; i++) {
		ret = FUNC3(phy->regs[i]);
		if (ret)
			FUNC0(dev, "failed to enable regulator: %s (%d)\n",
				cfg->reg_names[i], ret);
	}

	for (i = 0; i < cfg->num_clks; i++) {
		ret = FUNC1(phy->clks[i]);
		if (ret)
			FUNC0(dev, "failed to enable clock: %s (%d)\n",
				cfg->clk_names[i], ret);
	}

	return ret;
}