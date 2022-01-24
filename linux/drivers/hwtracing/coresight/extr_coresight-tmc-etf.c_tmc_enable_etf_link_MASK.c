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
struct tmc_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mode; scalar_t__ reading; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_MODE_SYSFS ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct tmc_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct tmc_drvdata*) ; 

__attribute__((used)) static int FUNC5(struct coresight_device *csdev,
			       int inport, int outport)
{
	int ret;
	unsigned long flags;
	struct tmc_drvdata *drvdata = FUNC1(csdev->dev.parent);

	FUNC2(&drvdata->spinlock, flags);
	if (drvdata->reading) {
		FUNC3(&drvdata->spinlock, flags);
		return -EBUSY;
	}

	ret = FUNC4(drvdata);
	if (!ret)
		drvdata->mode = CS_MODE_SYSFS;
	FUNC3(&drvdata->spinlock, flags);

	if (!ret)
		FUNC0(&csdev->dev, "TMC-ETF enabled\n");
	return ret;
}