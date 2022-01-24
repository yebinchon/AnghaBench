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
struct tegra_devfreq_device {int dummy; } ;
struct tegra_devfreq {struct tegra_devfreq_device* devices; int /*<<< orphan*/  cur_freq; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {unsigned long current_frequency; int busy_time; unsigned long total_time; struct tegra_devfreq* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTMON_DEV_AVG_COUNT ; 
 unsigned long ACTMON_SAMPLING_PERIOD ; 
 int BUS_SATURATION_RATIO ; 
 unsigned long KHZ ; 
 size_t MCALL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_devfreq* FUNC1 (struct device*) ; 
 int FUNC2 (struct tegra_devfreq_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					struct devfreq_dev_status *stat)
{
	struct tegra_devfreq *tegra = FUNC1(dev);
	struct tegra_devfreq_device *actmon_dev;
	unsigned long cur_freq;

	cur_freq = FUNC0(tegra->cur_freq);

	/* To be used by the tegra governor */
	stat->private_data = tegra;

	/* The below are to be used by the other governors */
	stat->current_frequency = cur_freq * KHZ;

	actmon_dev = &tegra->devices[MCALL];

	/* Number of cycles spent on memory access */
	stat->busy_time = FUNC2(actmon_dev, ACTMON_DEV_AVG_COUNT);

	/* The bus can be considered to be saturated way before 100% */
	stat->busy_time *= 100 / BUS_SATURATION_RATIO;

	/* Number of cycles in a sampling period */
	stat->total_time = ACTMON_SAMPLING_PERIOD * cur_freq;

	stat->busy_time = FUNC3(stat->busy_time, stat->total_time);

	return 0;
}