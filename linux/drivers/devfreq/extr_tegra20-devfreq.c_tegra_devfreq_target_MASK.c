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
struct tegra_devfreq {int /*<<< orphan*/  emc_clock; struct devfreq* devfreq; } ;
struct device {int dummy; } ;
struct devfreq {unsigned long previous_freq; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_devfreq* FUNC4 (struct device*) ; 
 unsigned long FUNC5 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC7 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev, unsigned long *freq,
				u32 flags)
{
	struct tegra_devfreq *tegra = FUNC4(dev);
	struct devfreq *devfreq = tegra->devfreq;
	struct dev_pm_opp *opp;
	unsigned long rate;
	int err;

	opp = FUNC7(dev, freq, flags);
	if (FUNC0(opp))
		return FUNC1(opp);

	rate = FUNC5(opp);
	FUNC6(opp);

	err = FUNC2(tegra->emc_clock, rate);
	if (err)
		return err;

	err = FUNC3(tegra->emc_clock, 0);
	if (err)
		goto restore_min_rate;

	return 0;

restore_min_rate:
	FUNC2(tegra->emc_clock, devfreq->previous_freq);

	return err;
}