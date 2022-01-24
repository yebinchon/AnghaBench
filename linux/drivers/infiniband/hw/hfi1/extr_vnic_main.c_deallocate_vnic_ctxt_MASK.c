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
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {scalar_t__ event_flags; scalar_t__ msix_intr; int /*<<< orphan*/  ctxt; } ;
struct TYPE_2__ {int /*<<< orphan*/  sps_ctxts; } ;

/* Variables and functions */
 int HFI1_RCVCTRL_CTXT_DIS ; 
 int HFI1_RCVCTRL_INTRAVAIL_DIS ; 
 int HFI1_RCVCTRL_NO_EGR_DROP_DIS ; 
 int HFI1_RCVCTRL_NO_RHQ_DROP_DIS ; 
 int HFI1_RCVCTRL_ONE_PKT_EGR_DIS ; 
 int HFI1_RCVCTRL_TIDFLOW_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ; 
 TYPE_1__ hfi1_stats ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct hfi1_devdata *dd,
				 struct hfi1_ctxtdata *uctxt)
{
	FUNC0(dd, "closing vnic context %d\n", uctxt->ctxt);
	FUNC1();

	/*
	 * Disable receive context and interrupt available, reset all
	 * RcvCtxtCtrl bits to default values.
	 */
	FUNC5(dd, HFI1_RCVCTRL_CTXT_DIS |
		     HFI1_RCVCTRL_TIDFLOW_DIS |
		     HFI1_RCVCTRL_INTRAVAIL_DIS |
		     HFI1_RCVCTRL_ONE_PKT_EGR_DIS |
		     HFI1_RCVCTRL_NO_RHQ_DROP_DIS |
		     HFI1_RCVCTRL_NO_EGR_DROP_DIS, uctxt);

	/* msix_intr will always be > 0, only clean up if this is true */
	if (uctxt->msix_intr)
		FUNC6(dd, uctxt->msix_intr);

	uctxt->event_flags = 0;

	FUNC3(uctxt);
	FUNC2(dd, uctxt);

	hfi1_stats.sps_ctxts--;

	FUNC4(uctxt);
}