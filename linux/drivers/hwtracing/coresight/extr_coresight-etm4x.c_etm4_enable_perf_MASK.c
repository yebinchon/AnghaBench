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
struct etmv4_drvdata {scalar_t__ cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct etmv4_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etmv4_drvdata*) ; 
 int FUNC3 (struct etmv4_drvdata*,struct perf_event*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct coresight_device *csdev,
			    struct perf_event *event)
{
	int ret = 0;
	struct etmv4_drvdata *drvdata = FUNC1(csdev->dev.parent);

	if (FUNC0(drvdata->cpu != FUNC4())) {
		ret = -EINVAL;
		goto out;
	}

	/* Configure the tracer based on the session's specifics */
	ret = FUNC3(drvdata, event);
	if (ret)
		goto out;
	/* And enable it */
	ret = FUNC2(drvdata);

out:
	return ret;
}