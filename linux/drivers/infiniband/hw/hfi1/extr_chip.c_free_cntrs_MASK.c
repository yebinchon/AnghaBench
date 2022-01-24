#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * rc_delayed_comp; int /*<<< orphan*/ * rc_qacks; int /*<<< orphan*/ * rc_acks; } ;
struct TYPE_5__ {TYPE_1__ rvp; } ;
struct hfi1_pportdata {TYPE_2__ ibport_data; int /*<<< orphan*/ * scntrs; int /*<<< orphan*/ * cntrs; } ;
struct TYPE_6__ {scalar_t__ function; } ;
struct hfi1_devdata {int num_pports; int /*<<< orphan*/ * update_cntr_wq; int /*<<< orphan*/ * cntrnames; int /*<<< orphan*/ * scntrs; int /*<<< orphan*/ * cntrs; int /*<<< orphan*/ * portcntrnames; TYPE_3__ synth_stats_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hfi1_devdata *dd)
{
	struct hfi1_pportdata *ppd;
	int i;

	if (dd->synth_stats_timer.function)
		FUNC0(&dd->synth_stats_timer);
	ppd = (struct hfi1_pportdata *)(dd + 1);
	for (i = 0; i < dd->num_pports; i++, ppd++) {
		FUNC3(ppd->cntrs);
		FUNC3(ppd->scntrs);
		FUNC2(ppd->ibport_data.rvp.rc_acks);
		FUNC2(ppd->ibport_data.rvp.rc_qacks);
		FUNC2(ppd->ibport_data.rvp.rc_delayed_comp);
		ppd->cntrs = NULL;
		ppd->scntrs = NULL;
		ppd->ibport_data.rvp.rc_acks = NULL;
		ppd->ibport_data.rvp.rc_qacks = NULL;
		ppd->ibport_data.rvp.rc_delayed_comp = NULL;
	}
	FUNC3(dd->portcntrnames);
	dd->portcntrnames = NULL;
	FUNC3(dd->cntrs);
	dd->cntrs = NULL;
	FUNC3(dd->scntrs);
	dd->scntrs = NULL;
	FUNC3(dd->cntrnames);
	dd->cntrnames = NULL;
	if (dd->update_cntr_wq) {
		FUNC1(dd->update_cntr_wq);
		dd->update_cntr_wq = NULL;
	}
}