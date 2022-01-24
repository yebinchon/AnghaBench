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
struct exynos_bus {struct dev_pm_opp* clk; int /*<<< orphan*/  curr_freq; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_pm_opp*) ; 
 unsigned long FUNC3 (struct dev_pm_opp*) ; 
 int FUNC4 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC10 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC11 (struct device*,char*) ; 

__attribute__((used)) static int FUNC12(struct device_node *np,
			      struct exynos_bus *bus)
{
	struct device *dev = bus->dev;
	struct dev_pm_opp *opp;
	unsigned long rate;
	int ret;

	/* Get the clock to provide each bus with source clock */
	bus->clk = FUNC11(dev, "bus");
	if (FUNC0(bus->clk)) {
		FUNC5(dev, "failed to get bus clock\n");
		return FUNC1(bus->clk);
	}

	ret = FUNC4(bus->clk);
	if (ret < 0) {
		FUNC5(dev, "failed to get enable clock\n");
		return ret;
	}

	/* Get the freq and voltage from OPP table to scale the bus freq */
	ret = FUNC7(dev);
	if (ret < 0) {
		FUNC5(dev, "failed to get OPP table\n");
		goto err_clk;
	}

	rate = FUNC3(bus->clk);

	opp = FUNC10(dev, &rate, 0);
	if (FUNC0(opp)) {
		FUNC5(dev, "failed to find dev_pm_opp\n");
		ret = FUNC1(opp);
		goto err_opp;
	}
	bus->curr_freq = FUNC6(opp);
	FUNC9(opp);

	return 0;

err_opp:
	FUNC8(dev);
err_clk:
	FUNC2(bus->clk);

	return ret;
}