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
struct tmc_drvdata {scalar_t__ config_type; int reading; scalar_t__ mode; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  sysfs_buf; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ TMC_CONFIG_TYPE_ETR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct tmc_drvdata *drvdata)
{
	int ret = 0;
	unsigned long flags;

	/* config types are set a boot time and never change */
	if (FUNC0(drvdata->config_type != TMC_CONFIG_TYPE_ETR))
		return -EINVAL;

	FUNC2(&drvdata->spinlock, flags);
	if (drvdata->reading) {
		ret = -EBUSY;
		goto out;
	}

	/*
	 * We can safely allow reads even if the ETR is operating in PERF mode,
	 * since the sysfs session is captured in mode specific data.
	 * If drvdata::sysfs_data is NULL the trace data has been read already.
	 */
	if (!drvdata->sysfs_buf) {
		ret = -EINVAL;
		goto out;
	}

	/* Disable the TMC if we are trying to read from a running session. */
	if (drvdata->mode == CS_MODE_SYSFS)
		FUNC1(drvdata);

	drvdata->reading = true;
out:
	FUNC3(&drvdata->spinlock, flags);

	return ret;
}