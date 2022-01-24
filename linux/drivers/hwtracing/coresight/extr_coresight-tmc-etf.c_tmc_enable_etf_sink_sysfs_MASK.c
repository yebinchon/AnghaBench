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
struct tmc_drvdata {char* buf; scalar_t__ mode; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  size; scalar_t__ reading; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {int /*<<< orphan*/  refcnt; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tmc_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct tmc_drvdata*) ; 

__attribute__((used)) static int FUNC8(struct coresight_device *csdev)
{
	int ret = 0;
	bool used = false;
	char *buf = NULL;
	unsigned long flags;
	struct tmc_drvdata *drvdata = FUNC1(csdev->dev.parent);

	/*
	 * If we don't have a buffer release the lock and allocate memory.
	 * Otherwise keep the lock and move along.
	 */
	FUNC5(&drvdata->spinlock, flags);
	if (!drvdata->buf) {
		FUNC6(&drvdata->spinlock, flags);

		/* Allocating the memory here while outside of the spinlock */
		buf = FUNC3(drvdata->size, GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		/* Let's try again */
		FUNC5(&drvdata->spinlock, flags);
	}

	if (drvdata->reading) {
		ret = -EBUSY;
		goto out;
	}

	/*
	 * In sysFS mode we can have multiple writers per sink.  Since this
	 * sink is already enabled no memory is needed and the HW need not be
	 * touched.
	 */
	if (drvdata->mode == CS_MODE_SYSFS) {
		FUNC0(csdev->refcnt);
		goto out;
	}

	/*
	 * If drvdata::buf isn't NULL, memory was allocated for a previous
	 * trace run but wasn't read.  If so simply zero-out the memory.
	 * Otherwise use the memory allocated above.
	 *
	 * The memory is freed when users read the buffer using the
	 * /dev/xyz.{etf|etb} interface.  See tmc_read_unprepare_etf() for
	 * details.
	 */
	if (drvdata->buf) {
		FUNC4(drvdata->buf, 0, drvdata->size);
	} else {
		used = true;
		drvdata->buf = buf;
	}

	ret = FUNC7(drvdata);
	if (!ret) {
		drvdata->mode = CS_MODE_SYSFS;
		FUNC0(csdev->refcnt);
	} else {
		/* Free up the buffer if we failed to enable */
		used = false;
	}
out:
	FUNC6(&drvdata->spinlock, flags);

	/* Free memory outside the spinlock if need be */
	if (!used)
		FUNC2(buf);

	return ret;
}