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
typedef  int u32 ;
struct perf_event {int dummy; } ;
struct etm_drvdata {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
#define  CS_MODE_DISABLED 130 
#define  CS_MODE_PERF 129 
#define  CS_MODE_SYSFS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct etm_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct coresight_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void FUNC6(struct coresight_device *csdev,
			struct perf_event *event)
{
	u32 mode;
	struct etm_drvdata *drvdata = FUNC1(csdev->dev.parent);

	/*
	 * For as long as the tracer isn't disabled another entity can't
	 * change its status.  As such we can read the status here without
	 * fearing it will change under us.
	 */
	mode = FUNC4(&drvdata->mode);

	switch (mode) {
	case CS_MODE_DISABLED:
		break;
	case CS_MODE_SYSFS:
		FUNC3(csdev);
		break;
	case CS_MODE_PERF:
		FUNC2(csdev);
		break;
	default:
		FUNC0(mode);
		return;
	}

	if (mode)
		FUNC5(&drvdata->mode, CS_MODE_DISABLED);
}