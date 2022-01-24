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
struct tmc_drvdata {scalar_t__ size; scalar_t__ mode; int /*<<< orphan*/  spinlock; struct etr_buf* sysfs_buf; scalar_t__ reading; } ;
struct etr_buf {scalar_t__ size; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_PERF ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct etr_buf*) ; 
 int FUNC1 (struct etr_buf*) ; 
 struct etr_buf* FUNC2 (struct etr_buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct tmc_drvdata* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct tmc_drvdata*,struct etr_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct etr_buf*) ; 
 struct etr_buf* FUNC10 (struct tmc_drvdata*) ; 

__attribute__((used)) static int FUNC11(struct coresight_device *csdev)
{
	int ret = 0;
	unsigned long flags;
	struct tmc_drvdata *drvdata = FUNC5(csdev->dev.parent);
	struct etr_buf *sysfs_buf = NULL, *new_buf = NULL, *free_buf = NULL;

	/*
	 * If we are enabling the ETR from disabled state, we need to make
	 * sure we have a buffer with the right size. The etr_buf is not reset
	 * immediately after we stop the tracing in SYSFS mode as we wait for
	 * the user to collect the data. We may be able to reuse the existing
	 * buffer, provided the size matches. Any allocation has to be done
	 * with the lock released.
	 */
	FUNC6(&drvdata->spinlock, flags);
	sysfs_buf = FUNC2(drvdata->sysfs_buf);
	if (!sysfs_buf || (sysfs_buf->size != drvdata->size)) {
		FUNC7(&drvdata->spinlock, flags);

		/* Allocate memory with the locks released */
		free_buf = new_buf = FUNC10(drvdata);
		if (FUNC0(new_buf))
			return FUNC1(new_buf);

		/* Let's try again */
		FUNC6(&drvdata->spinlock, flags);
	}

	if (drvdata->reading || drvdata->mode == CS_MODE_PERF) {
		ret = -EBUSY;
		goto out;
	}

	/*
	 * In sysFS mode we can have multiple writers per sink.  Since this
	 * sink is already enabled no memory is needed and the HW need not be
	 * touched, even if the buffer size has changed.
	 */
	if (drvdata->mode == CS_MODE_SYSFS) {
		FUNC3(csdev->refcnt);
		goto out;
	}

	/*
	 * If we don't have a buffer or it doesn't match the requested size,
	 * use the buffer allocated above. Otherwise reuse the existing buffer.
	 */
	sysfs_buf = FUNC2(drvdata->sysfs_buf);
	if (!sysfs_buf || (new_buf && sysfs_buf->size != new_buf->size)) {
		free_buf = sysfs_buf;
		drvdata->sysfs_buf = new_buf;
	}

	ret = FUNC8(drvdata, drvdata->sysfs_buf);
	if (!ret) {
		drvdata->mode = CS_MODE_SYSFS;
		FUNC3(csdev->refcnt);
	}
out:
	FUNC7(&drvdata->spinlock, flags);

	/* Free memory outside the spinlock if need be */
	if (free_buf)
		FUNC9(free_buf);

	if (!ret)
		FUNC4(&csdev->dev, "TMC-ETR enabled\n");

	return ret;
}