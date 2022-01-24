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
typedef  scalar_t__ u64 ;
struct hfi1_pportdata {scalar_t__ port_type; int /*<<< orphan*/  linkinit_reason; scalar_t__* guids; scalar_t__ port; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ base_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENDED_PSN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t HFI1_PORT_GUID_INDEX ; 
 int /*<<< orphan*/  OPA_LINKINIT_REASON_LINKUP ; 
 scalar_t__ PORT_TYPE_QSFP ; 
 int /*<<< orphan*/  RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int FUNC4 (struct hfi1_devdata*) ; 
 scalar_t__ loopback ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_pportdata*) ; 

int FUNC8(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;
	u64 guid;
	int ret;

	if (FUNC0(EXTENDED_PSN))
		FUNC1(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK);

	guid = ppd->guids[HFI1_PORT_GUID_INDEX];
	if (!guid) {
		if (dd->base_guid)
			guid = dd->base_guid + ppd->port - 1;
		ppd->guids[HFI1_PORT_GUID_INDEX] = guid;
	}

	/* Set linkinit_reason on power up per OPA spec */
	ppd->linkinit_reason = OPA_LINKINIT_REASON_LINKUP;

	/* one-time init of the LCB */
	FUNC3(dd);

	if (loopback) {
		ret = FUNC4(dd);
		if (ret < 0)
			return ret;
	}

	FUNC2(ppd);
	if (ppd->port_type == PORT_TYPE_QSFP) {
		FUNC5(ppd, 0);
		FUNC7(ppd);
		FUNC5(ppd, 1);
	}

	FUNC6(ppd);
	return 0;
}