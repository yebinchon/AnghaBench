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
struct etm_enable_arg {int rc; struct etm_drvdata* drvdata; int /*<<< orphan*/  member_0; } ;
struct etm_drvdata {int sticky_enable; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct etm_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etm_enable_hw_smp_call ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct etm_enable_arg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct coresight_device *csdev)
{
	struct etm_drvdata *drvdata = FUNC2(csdev->dev.parent);
	struct etm_enable_arg arg = { 0 };
	int ret;

	FUNC4(&drvdata->spinlock);

	/*
	 * Configure the ETM only if the CPU is online.  If it isn't online
	 * hw configuration will take place on the local CPU during bring up.
	 */
	if (FUNC0(drvdata->cpu)) {
		arg.drvdata = drvdata;
		ret = FUNC3(drvdata->cpu,
					       etm_enable_hw_smp_call, &arg, 1);
		if (!ret)
			ret = arg.rc;
		if (!ret)
			drvdata->sticky_enable = true;
	} else {
		ret = -ENODEV;
	}

	FUNC5(&drvdata->spinlock);

	if (!ret)
		FUNC1(&csdev->dev, "ETM tracing enabled\n");
	return ret;
}