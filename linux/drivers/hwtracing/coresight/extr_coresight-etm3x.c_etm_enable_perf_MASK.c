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
struct perf_event {int dummy; } ;
struct etm_drvdata {scalar_t__ cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct etm_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct etm_drvdata*,struct perf_event*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct coresight_device *csdev,
			   struct perf_event *event)
{
	struct etm_drvdata *drvdata = FUNC1(csdev->dev.parent);

	if (FUNC0(drvdata->cpu != FUNC4()))
		return -EINVAL;

	/* Configure the tracer based on the session's specifics */
	FUNC3(drvdata, event);
	/* And enable it */
	return FUNC2(drvdata);
}