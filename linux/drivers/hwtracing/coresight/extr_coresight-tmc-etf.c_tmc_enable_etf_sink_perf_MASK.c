#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tmc_drvdata {scalar_t__ mode; int pid; int /*<<< orphan*/  spinlock; scalar_t__ reading; } ;
struct perf_output_handle {TYPE_2__* event; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {int /*<<< orphan*/  refcnt; TYPE_1__ dev; } ;
typedef  int pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_PERF ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tmc_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tmc_drvdata*) ; 
 int FUNC6 (struct coresight_device*,struct perf_output_handle*) ; 

__attribute__((used)) static int FUNC7(struct coresight_device *csdev, void *data)
{
	int ret = 0;
	pid_t pid;
	unsigned long flags;
	struct tmc_drvdata *drvdata = FUNC1(csdev->dev.parent);
	struct perf_output_handle *handle = data;

	FUNC2(&drvdata->spinlock, flags);
	do {
		ret = -EINVAL;
		if (drvdata->reading)
			break;
		/*
		 * No need to continue if the ETB/ETF is already operated
		 * from sysFS.
		 */
		if (drvdata->mode == CS_MODE_SYSFS) {
			ret = -EBUSY;
			break;
		}

		/* Get a handle on the pid of the process to monitor */
		pid = FUNC4(handle->event->owner);

		if (drvdata->pid != -1 && drvdata->pid != pid) {
			ret = -EBUSY;
			break;
		}

		ret = FUNC6(csdev, handle);
		if (ret)
			break;

		/*
		 * No HW configuration is needed if the sink is already in
		 * use for this session.
		 */
		if (drvdata->pid == pid) {
			FUNC0(csdev->refcnt);
			break;
		}

		ret  = FUNC5(drvdata);
		if (!ret) {
			/* Associate with monitored process. */
			drvdata->pid = pid;
			drvdata->mode = CS_MODE_PERF;
			FUNC0(csdev->refcnt);
		}
	} while (0);
	FUNC3(&drvdata->spinlock, flags);

	return ret;
}