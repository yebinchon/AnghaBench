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
struct tmc_drvdata {scalar_t__ mode; int pid; int /*<<< orphan*/  spinlock; scalar_t__ reading; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_DISABLED ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct tmc_drvdata* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tmc_drvdata*) ; 

__attribute__((used)) static int FUNC7(struct coresight_device *csdev)
{
	unsigned long flags;
	struct tmc_drvdata *drvdata = FUNC3(csdev->dev.parent);

	FUNC4(&drvdata->spinlock, flags);

	if (drvdata->reading) {
		FUNC5(&drvdata->spinlock, flags);
		return -EBUSY;
	}

	if (FUNC1(csdev->refcnt)) {
		FUNC5(&drvdata->spinlock, flags);
		return -EBUSY;
	}

	/* Complain if we (somehow) got out of sync */
	FUNC0(drvdata->mode == CS_MODE_DISABLED);
	FUNC6(drvdata);
	/* Dissociate from monitored process. */
	drvdata->pid = -1;
	drvdata->mode = CS_MODE_DISABLED;

	FUNC5(&drvdata->spinlock, flags);

	FUNC2(&csdev->dev, "TMC-ETB/ETF disabled\n");
	return 0;
}