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
typedef  int u32 ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 int DEVFREQ_FLAG_LEAST_UPPER_BOUND ; 
 int /*<<< orphan*/  ERANGE ; 
 struct dev_pm_opp* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC1 (struct device*,unsigned long*) ; 
 struct dev_pm_opp* FUNC2 (struct device*,unsigned long*) ; 

struct dev_pm_opp *FUNC3(struct device *dev,
					   unsigned long *freq,
					   u32 flags)
{
	struct dev_pm_opp *opp;

	if (flags & DEVFREQ_FLAG_LEAST_UPPER_BOUND) {
		/* The freq is an upper bound. opp should be lower */
		opp = FUNC2(dev, freq);

		/* If not available, use the closest opp */
		if (opp == FUNC0(-ERANGE))
			opp = FUNC1(dev, freq);
	} else {
		/* The freq is an lower bound. opp should be higher */
		opp = FUNC1(dev, freq);

		/* If not available, use the closest opp */
		if (opp == FUNC0(-ERANGE))
			opp = FUNC2(dev, freq);
	}

	return opp;
}