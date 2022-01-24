#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {struct etm_filters* addr_filters; } ;
struct perf_event {TYPE_1__ hw; } ;
struct etmv4_drvdata {scalar_t__ cpu; scalar_t__ base; } ;
struct etm_filters {int ssstatus; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ TRCVICTLR ; 
 scalar_t__ FUNC1 (int) ; 
 struct etmv4_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etmv4_drvdata*) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct coresight_device *csdev,
			     struct perf_event *event)
{
	u32 control;
	struct etm_filters *filters = event->hw.addr_filters;
	struct etmv4_drvdata *drvdata = FUNC2(csdev->dev.parent);

	if (FUNC1(drvdata->cpu != FUNC5()))
		return -EINVAL;

	FUNC3(drvdata);

	/*
	 * Check if the start/stop logic was active when the unit was stopped.
	 * That way we can re-enable the start/stop logic when the process is
	 * scheduled again.  Configuration of the start/stop logic happens in
	 * function etm4_set_event_filters().
	 */
	control = FUNC4(drvdata->base + TRCVICTLR);
	/* TRCVICTLR::SSSTATUS, bit[9] */
	filters->ssstatus = (control & FUNC0(9));

	return 0;
}