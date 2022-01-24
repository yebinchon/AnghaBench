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
struct tmc_drvdata {scalar_t__ config_type; int reading; scalar_t__ mode; int /*<<< orphan*/  spinlock; int /*<<< orphan*/ * buf; scalar_t__ base; } ;
typedef  enum tmc_mode { ____Placeholder_tmc_mode } tmc_mode ;

/* Variables and functions */
 scalar_t__ CS_MODE_PERF ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ TMC_CONFIG_TYPE_ETB ; 
 scalar_t__ TMC_CONFIG_TYPE_ETF ; 
 scalar_t__ TMC_MODE ; 
 int TMC_MODE_CIRCULAR_BUFFER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmc_drvdata*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct tmc_drvdata *drvdata)
{
	enum tmc_mode mode;
	int ret = 0;
	unsigned long flags;

	/* config types are set a boot time and never change */
	if (FUNC0(drvdata->config_type != TMC_CONFIG_TYPE_ETB &&
			 drvdata->config_type != TMC_CONFIG_TYPE_ETF))
		return -EINVAL;

	FUNC3(&drvdata->spinlock, flags);

	if (drvdata->reading) {
		ret = -EBUSY;
		goto out;
	}

	/* There is no point in reading a TMC in HW FIFO mode */
	mode = FUNC2(drvdata->base + TMC_MODE);
	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
		ret = -EINVAL;
		goto out;
	}

	/* Don't interfere if operated from Perf */
	if (drvdata->mode == CS_MODE_PERF) {
		ret = -EINVAL;
		goto out;
	}

	/* If drvdata::buf is NULL the trace data has been read already */
	if (drvdata->buf == NULL) {
		ret = -EINVAL;
		goto out;
	}

	/* Disable the TMC if need be */
	if (drvdata->mode == CS_MODE_SYSFS)
		FUNC1(drvdata);

	drvdata->reading = true;
out:
	FUNC4(&drvdata->spinlock, flags);

	return ret;
}