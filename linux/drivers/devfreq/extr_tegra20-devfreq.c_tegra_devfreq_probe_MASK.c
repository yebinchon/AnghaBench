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
struct tegra_mc {scalar_t__ regs; } ;
struct tegra_devfreq {struct tegra_mc* devfreq; scalar_t__ regs; struct tegra_mc* emc_clock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_GOV_SIMPLE_ONDEMAND ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tegra_mc*) ; 
 scalar_t__ MC_STAT_CONTROL ; 
 scalar_t__ MC_STAT_EMC_CLOCK_LIMIT ; 
 scalar_t__ MC_STAT_EMC_CONTROL ; 
 int FUNC1 (struct tegra_mc*) ; 
 unsigned long ULONG_MAX ; 
 unsigned long FUNC2 (struct tegra_mc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tegra_mc* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tegra_mc* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct tegra_devfreq* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tegra_devfreq*) ; 
 int /*<<< orphan*/  tegra_devfreq_profile ; 
 struct tegra_mc* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct tegra_devfreq *tegra;
	struct tegra_mc *mc;
	unsigned long max_rate;
	unsigned long rate;
	int err;

	mc = FUNC10();
	if (FUNC0(mc)) {
		err = FUNC1(mc);
		FUNC3(&pdev->dev, "failed to get memory controller: %d\n",
			err);
		return err;
	}

	tegra = FUNC8(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
	if (!tegra)
		return -ENOMEM;

	/* EMC is a system-critical clock that is always enabled */
	tegra->emc_clock = FUNC7(&pdev->dev, "emc");
	if (FUNC0(tegra->emc_clock)) {
		err = FUNC1(tegra->emc_clock);
		FUNC3(&pdev->dev, "failed to get emc clock: %d\n", err);
		return err;
	}

	tegra->regs = mc->regs;

	max_rate = FUNC2(tegra->emc_clock, ULONG_MAX);

	for (rate = 0; rate <= max_rate; rate++) {
		rate = FUNC2(tegra->emc_clock, rate);

		err = FUNC4(&pdev->dev, rate, 0);
		if (err) {
			FUNC3(&pdev->dev, "failed to add opp: %d\n", err);
			goto remove_opps;
		}
	}

	/*
	 * Reset statistic gathers state, select global bandwidth for the
	 * statistics collection mode and set clocks counter saturation
	 * limit to maximum.
	 */
	FUNC11(0x00000000, tegra->regs + MC_STAT_CONTROL);
	FUNC11(0x00000000, tegra->regs + MC_STAT_EMC_CONTROL);
	FUNC11(0xffffffff, tegra->regs + MC_STAT_EMC_CLOCK_LIMIT);

	FUNC9(pdev, tegra);

	tegra->devfreq = FUNC6(&pdev->dev, &tegra_devfreq_profile,
					    DEVFREQ_GOV_SIMPLE_ONDEMAND, NULL);
	if (FUNC0(tegra->devfreq)) {
		err = FUNC1(tegra->devfreq);
		goto remove_opps;
	}

	return 0;

remove_opps:
	FUNC5(&pdev->dev);

	return err;
}