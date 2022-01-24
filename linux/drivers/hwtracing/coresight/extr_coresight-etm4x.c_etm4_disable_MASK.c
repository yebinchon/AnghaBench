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
struct etmv4_drvdata {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
#define  CS_MODE_DISABLED 130 
#define  CS_MODE_PERF 129 
#define  CS_MODE_SYSFS 128 
 struct etmv4_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coresight_device*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void FUNC5(struct coresight_device *csdev,
			 struct perf_event *event)
{
	u32 mode;
	struct etmv4_drvdata *drvdata = FUNC0(csdev->dev.parent);

	/*
	 * For as long as the tracer isn't disabled another entity can't
	 * change its status.  As such we can read the status here without
	 * fearing it will change under us.
	 */
	mode = FUNC3(&drvdata->mode);

	switch (mode) {
	case CS_MODE_DISABLED:
		break;
	case CS_MODE_SYSFS:
		FUNC2(csdev);
		break;
	case CS_MODE_PERF:
		FUNC1(csdev, event);
		break;
	}

	if (mode)
		FUNC4(&drvdata->mode, CS_MODE_DISABLED);
}