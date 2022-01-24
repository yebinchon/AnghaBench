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
typedef  scalar_t__ u32 ;
struct stm_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mode; } ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_MODE_DISABLED ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct stm_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stm_drvdata*) ; 

__attribute__((used)) static int FUNC7(struct coresight_device *csdev,
		      struct perf_event *event, u32 mode)
{
	u32 val;
	struct stm_drvdata *drvdata = FUNC1(csdev->dev.parent);

	if (mode != CS_MODE_SYSFS)
		return -EINVAL;

	val = FUNC2(&drvdata->mode, CS_MODE_DISABLED, mode);

	/* Someone is already using the tracer */
	if (val)
		return -EBUSY;

	FUNC3(csdev->dev.parent);

	FUNC4(&drvdata->spinlock);
	FUNC6(drvdata);
	FUNC5(&drvdata->spinlock);

	FUNC0(&csdev->dev, "STM tracing enabled\n");
	return 0;
}