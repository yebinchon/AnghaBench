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
struct TYPE_2__ {int /*<<< orphan*/ * init; } ;
struct mdp4_lvds_pll {TYPE_1__ pll_hw; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct mdp4_lvds_pll* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pll_init ; 

struct clk *FUNC5(struct drm_device *dev)
{
	struct mdp4_lvds_pll *lvds_pll;
	struct clk *clk;
	int ret;

	lvds_pll = FUNC4(dev->dev, sizeof(*lvds_pll), GFP_KERNEL);
	if (!lvds_pll) {
		ret = -ENOMEM;
		goto fail;
	}

	lvds_pll->dev = dev;

	lvds_pll->pll_hw.init = &pll_init;
	clk = FUNC3(dev->dev, &lvds_pll->pll_hw);
	if (FUNC1(clk)) {
		ret = FUNC2(clk);
		goto fail;
	}

	return clk;

fail:
	return FUNC0(ret);
}