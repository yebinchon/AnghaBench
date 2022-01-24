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
struct tmc_drvdata {scalar_t__ config_type; scalar_t__ mode; char* buf; int reading; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  size; scalar_t__ base; } ;
typedef  enum tmc_mode { ____Placeholder_tmc_mode } tmc_mode ;

/* Variables and functions */
 scalar_t__ CS_MODE_SYSFS ; 
 int EINVAL ; 
 scalar_t__ TMC_CONFIG_TYPE_ETB ; 
 scalar_t__ TMC_CONFIG_TYPE_ETF ; 
 scalar_t__ TMC_MODE ; 
 int TMC_MODE_CIRCULAR_BUFFER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct tmc_drvdata *drvdata)
{
	char *buf = NULL;
	enum tmc_mode mode;
	unsigned long flags;

	/* config types are set a boot time and never change */
	if (FUNC0(drvdata->config_type != TMC_CONFIG_TYPE_ETB &&
			 drvdata->config_type != TMC_CONFIG_TYPE_ETF))
		return -EINVAL;

	FUNC5(&drvdata->spinlock, flags);

	/* There is no point in reading a TMC in HW FIFO mode */
	mode = FUNC4(drvdata->base + TMC_MODE);
	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
		FUNC6(&drvdata->spinlock, flags);
		return -EINVAL;
	}

	/* Re-enable the TMC if need be */
	if (drvdata->mode == CS_MODE_SYSFS) {
		/*
		 * The trace run will continue with the same allocated trace
		 * buffer. As such zero-out the buffer so that we don't end
		 * up with stale data.
		 *
		 * Since the tracer is still enabled drvdata::buf
		 * can't be NULL.
		 */
		FUNC3(drvdata->buf, 0, drvdata->size);
		FUNC1(drvdata);
	} else {
		/*
		 * The ETB/ETF is not tracing and the buffer was just read.
		 * As such prepare to free the trace buffer.
		 */
		buf = drvdata->buf;
		drvdata->buf = NULL;
	}

	drvdata->reading = false;
	FUNC6(&drvdata->spinlock, flags);

	/*
	 * Free allocated memory outside of the spinlock.  There is no need
	 * to assert the validity of 'buf' since calling kfree(NULL) is safe.
	 */
	FUNC2(buf);

	return 0;
}