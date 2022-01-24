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
struct etb_drvdata {scalar_t__ mode; int pid; int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_DISABLED ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct etb_drvdata* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct etb_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct coresight_device *csdev)
{
	struct etb_drvdata *drvdata = FUNC3(csdev->dev.parent);
	unsigned long flags;

	FUNC5(&drvdata->spinlock, flags);

	if (FUNC1(csdev->refcnt)) {
		FUNC6(&drvdata->spinlock, flags);
		return -EBUSY;
	}

	/* Complain if we (somehow) got out of sync */
	FUNC0(drvdata->mode == CS_MODE_DISABLED);
	FUNC4(drvdata);
	/* Dissociate from monitored process. */
	drvdata->pid = -1;
	drvdata->mode = CS_MODE_DISABLED;
	FUNC6(&drvdata->spinlock, flags);

	FUNC2(&csdev->dev, "ETB disabled\n");
	return 0;
}