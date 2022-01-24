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
struct stm_drvdata {int /*<<< orphan*/  mode; int /*<<< orphan*/  base; int /*<<< orphan*/  spinlock; } ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_MODE_DISABLED ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int /*<<< orphan*/  STMTCSR ; 
 int /*<<< orphan*/  STMTCSR_BUSY_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct stm_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct stm_drvdata*) ; 

__attribute__((used)) static void FUNC9(struct coresight_device *csdev,
			struct perf_event *event)
{
	struct stm_drvdata *drvdata = FUNC2(csdev->dev.parent);

	/*
	 * For as long as the tracer isn't disabled another entity can't
	 * change its status.  As such we can read the status here without
	 * fearing it will change under us.
	 */
	if (FUNC3(&drvdata->mode) == CS_MODE_SYSFS) {
		FUNC6(&drvdata->spinlock);
		FUNC8(drvdata);
		FUNC7(&drvdata->spinlock);

		/* Wait until the engine has completely stopped */
		FUNC0(drvdata->base, STMTCSR, STMTCSR_BUSY_BIT, 0);

		FUNC5(csdev->dev.parent);

		FUNC4(&drvdata->mode, CS_MODE_DISABLED);
		FUNC1(&csdev->dev, "STM tracing disabled\n");
	}
}