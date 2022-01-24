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
struct tegra_devfreq {scalar_t__ regs; int /*<<< orphan*/  emc_clock; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {int busy_time; int total_time; int /*<<< orphan*/  current_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMC_GATHER_CLEAR ; 
 int /*<<< orphan*/  EMC_GATHER_ENABLE ; 
 scalar_t__ MC_STAT_CONTROL ; 
 scalar_t__ MC_STAT_EMC_CLOCKS ; 
 scalar_t__ MC_STAT_EMC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_devfreq* FUNC1 (struct device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					struct devfreq_dev_status *stat)
{
	struct tegra_devfreq *tegra = FUNC1(dev);

	/*
	 * EMC_COUNT returns number of memory events, that number is lower
	 * than the number of clocks. Conversion ratio of 1/8 results in a
	 * bit higher bandwidth than actually needed, it is good enough for
	 * the time being because drivers don't support requesting minimum
	 * needed memory bandwidth yet.
	 *
	 * TODO: adjust the ratio value once relevant drivers will support
	 * memory bandwidth management.
	 */
	stat->busy_time = FUNC2(tegra->regs + MC_STAT_EMC_COUNT);
	stat->total_time = FUNC2(tegra->regs + MC_STAT_EMC_CLOCKS) / 8;
	stat->current_frequency = FUNC0(tegra->emc_clock);

	FUNC3(EMC_GATHER_CLEAR, tegra->regs + MC_STAT_CONTROL);
	FUNC3(EMC_GATHER_ENABLE, tegra->regs + MC_STAT_CONTROL);

	return 0;
}