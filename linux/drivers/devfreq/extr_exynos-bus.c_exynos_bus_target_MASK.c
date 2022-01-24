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
typedef  int /*<<< orphan*/  u32 ;
struct exynos_bus {unsigned long curr_freq; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct exynos_bus* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pm_opp*) ; 
 int FUNC5 (struct device*,unsigned long) ; 
 struct dev_pm_opp* FUNC6 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned long *freq, u32 flags)
{
	struct exynos_bus *bus = FUNC3(dev);
	struct dev_pm_opp *new_opp;
	int ret = 0;

	/* Get correct frequency for bus. */
	new_opp = FUNC6(dev, freq, flags);
	if (FUNC0(new_opp)) {
		FUNC2(dev, "failed to get recommended opp instance\n");
		return FUNC1(new_opp);
	}

	FUNC4(new_opp);

	/* Change voltage and frequency according to new OPP level */
	FUNC7(&bus->lock);
	ret = FUNC5(dev, *freq);
	if (!ret)
		bus->curr_freq = *freq;

	FUNC8(&bus->lock);

	return ret;
}