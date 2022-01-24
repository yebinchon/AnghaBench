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
struct exynos_bus {int /*<<< orphan*/ * opp_table; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct exynos_bus* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct exynos_bus*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct exynos_bus *bus = FUNC1(dev);
	int ret;

	ret = FUNC5(bus);
	if (ret < 0)
		FUNC4(dev, "failed to disable the devfreq-event devices\n");

	FUNC2(dev);
	FUNC0(bus->clk);
	if (bus->opp_table) {
		FUNC3(bus->opp_table);
		bus->opp_table = NULL;
	}
}