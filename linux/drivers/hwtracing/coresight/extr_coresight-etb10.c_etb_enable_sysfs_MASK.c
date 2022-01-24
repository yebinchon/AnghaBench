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
struct etb_drvdata {scalar_t__ mode; int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {int /*<<< orphan*/  refcnt; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_DISABLED ; 
 scalar_t__ CS_MODE_PERF ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct etb_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etb_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct coresight_device *csdev)
{
	int ret = 0;
	unsigned long flags;
	struct etb_drvdata *drvdata = FUNC1(csdev->dev.parent);

	FUNC3(&drvdata->spinlock, flags);

	/* Don't messup with perf sessions. */
	if (drvdata->mode == CS_MODE_PERF) {
		ret = -EBUSY;
		goto out;
	}

	if (drvdata->mode == CS_MODE_DISABLED) {
		ret = FUNC2(drvdata);
		if (ret)
			goto out;

		drvdata->mode = CS_MODE_SYSFS;
	}

	FUNC0(csdev->refcnt);
out:
	FUNC4(&drvdata->spinlock, flags);
	return ret;
}