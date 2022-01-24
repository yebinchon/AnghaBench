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
 int /*<<< orphan*/  CS_MODE_DISABLED ; 
#define  CS_MODE_PERF 129 
#define  CS_MODE_SYSFS 128 
 int EBUSY ; 
 int EINVAL ; 
 struct etm_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct coresight_device*,struct perf_event*) ; 
 int FUNC2 (struct coresight_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct coresight_device *csdev,
		      struct perf_event *event, u32 mode)
{
	int ret;
	u32 val;
	struct etm_drvdata *drvdata = FUNC0(csdev->dev.parent);

	val = FUNC3(&drvdata->mode, CS_MODE_DISABLED, mode);

	/* Someone is already using the tracer */
	if (val)
		return -EBUSY;

	switch (mode) {
	case CS_MODE_SYSFS:
		ret = FUNC2(csdev);
		break;
	case CS_MODE_PERF:
		ret = FUNC1(csdev, event);
		break;
	default:
		ret = -EINVAL;
	}

	/* The tracer didn't start */
	if (ret)
		FUNC4(&drvdata->mode, CS_MODE_DISABLED);

	return ret;
}