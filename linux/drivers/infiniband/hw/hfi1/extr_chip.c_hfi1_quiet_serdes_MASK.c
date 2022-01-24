#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hfi1_pportdata {int /*<<< orphan*/  freeze_work; int /*<<< orphan*/  offline_disabled_reason; int /*<<< orphan*/  start_link_work; int /*<<< orphan*/  qsfp_retry_count; scalar_t__ link_enabled; scalar_t__ driver_link_ready; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HLS_DN_OFFLINE ; 
 int /*<<< orphan*/  MAX_QSFP_RETRIES ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_REBOOT ; 
 int /*<<< orphan*/  RCV_CTRL_RCV_PORT_ENABLE_SMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 

void FUNC7(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;

	/*
	 * Shut down the link and keep it down.   First turn off that the
	 * driver wants to allow the link to be up (driver_link_ready).
	 * Then make sure the link is not automatically restarted
	 * (link_enabled).  Cancel any pending restart.  And finally
	 * go offline.
	 */
	ppd->driver_link_ready = 0;
	ppd->link_enabled = 0;

	ppd->qsfp_retry_count = MAX_QSFP_RETRIES; /* prevent more retries */
	FUNC4(&ppd->start_link_work);
	FUNC1(&ppd->start_link_work);

	ppd->offline_disabled_reason =
			FUNC0(OPA_LINKDOWN_REASON_REBOOT);
	FUNC5(ppd, OPA_LINKDOWN_REASON_REBOOT, 0,
			     OPA_LINKDOWN_REASON_REBOOT);
	FUNC6(ppd, HLS_DN_OFFLINE);

	/* disable the port */
	FUNC3(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
	FUNC2(&ppd->freeze_work);
}