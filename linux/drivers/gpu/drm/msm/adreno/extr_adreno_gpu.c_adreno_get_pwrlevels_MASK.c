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
struct msm_gpu {unsigned long fast_rate; struct dev_pm_opp* icc_path; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct dev_pm_opp*) ; 
 unsigned long ULONG_MAX ; 
 int FUNC3 (struct device*) ; 
 struct dev_pm_opp* FUNC4 (struct device*,unsigned long*) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct dev_pm_opp* FUNC9 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
		struct msm_gpu *gpu)
{
	unsigned long freq = ULONG_MAX;
	struct dev_pm_opp *opp;
	int ret;

	gpu->fast_rate = 0;

	/* You down with OPP? */
	if (!FUNC8(dev->of_node, "operating-points-v2", NULL))
		ret = FUNC3(dev);
	else {
		ret = FUNC5(dev);
		if (ret)
			FUNC1(dev, "Unable to set the OPP table\n");
	}

	if (!ret) {
		/* Find the fastest defined rate */
		opp = FUNC4(dev, &freq);
		if (!FUNC2(opp)) {
			gpu->fast_rate = freq;
			FUNC6(opp);
		}
	}

	if (!gpu->fast_rate) {
		FUNC7(dev,
			"Could not find a clock rate. Using a reasonable default\n");
		/* Pick a suitably safe clock speed for any target */
		gpu->fast_rate = 200000000;
	}

	FUNC0("fast_rate=%u, slow_rate=27000000", gpu->fast_rate);

	/* Check for an interconnect path for the bus */
	gpu->icc_path = FUNC9(dev, NULL);
	if (FUNC2(gpu->icc_path))
		gpu->icc_path = NULL;

	return 0;
}