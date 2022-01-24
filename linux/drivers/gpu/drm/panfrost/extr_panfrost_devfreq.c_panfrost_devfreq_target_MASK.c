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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned long cur_freq; unsigned long cur_volt; } ;
struct panfrost_device {TYPE_1__ devfreq; int /*<<< orphan*/  regulator; int /*<<< orphan*/  clock; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned long,...) ; 
 unsigned long FUNC4 (struct dev_pm_opp*) ; 
 unsigned long FUNC5 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC7 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 
 struct panfrost_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, unsigned long *freq,
				   u32 flags)
{
	struct panfrost_device *pfdev = FUNC8(FUNC10(dev));
	struct dev_pm_opp *opp;
	unsigned long old_clk_rate = pfdev->devfreq.cur_freq;
	unsigned long target_volt, target_rate;
	int err;

	opp = FUNC7(dev, freq, flags);
	if (FUNC0(opp))
		return FUNC1(opp);

	target_rate = FUNC4(opp);
	target_volt = FUNC5(opp);
	FUNC6(opp);

	if (old_clk_rate == target_rate)
		return 0;

	/*
	 * If frequency scaling from low to high, adjust voltage first.
	 * If frequency scaling from high to low, adjust frequency first.
	 */
	if (old_clk_rate < target_rate) {
		err = FUNC9(pfdev->regulator, target_volt,
					    target_volt);
		if (err) {
			FUNC3(dev, "Cannot set voltage %lu uV\n",
				target_volt);
			return err;
		}
	}

	err = FUNC2(pfdev->clock, target_rate);
	if (err) {
		FUNC3(dev, "Cannot set frequency %lu (%d)\n", target_rate,
			err);
		FUNC9(pfdev->regulator, pfdev->devfreq.cur_volt,
				      pfdev->devfreq.cur_volt);
		return err;
	}

	if (old_clk_rate > target_rate) {
		err = FUNC9(pfdev->regulator, target_volt,
					    target_volt);
		if (err)
			FUNC3(dev, "Cannot set voltage %lu uV\n", target_volt);
	}

	pfdev->devfreq.cur_freq = target_rate;
	pfdev->devfreq.cur_volt = target_volt;

	return 0;
}