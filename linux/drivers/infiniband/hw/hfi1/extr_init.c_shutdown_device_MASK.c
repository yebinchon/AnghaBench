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
struct hfi1_pportdata {int* statusp; int /*<<< orphan*/ * link_wq; int /*<<< orphan*/ * hfi1_wq; scalar_t__ linkup; } ;
struct hfi1_devdata {int flags; unsigned int num_pports; int num_rcv_contexts; int num_send_contexts; TYPE_1__* send_contexts; struct hfi1_pportdata* pport; } ;
struct hfi1_ctxtdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int HFI1_INITTED ; 
 int HFI1_RCVCTRL_CTXT_DIS ; 
 int HFI1_RCVCTRL_INTRAVAIL_DIS ; 
 int HFI1_RCVCTRL_ONE_PKT_EGR_DIS ; 
 int HFI1_RCVCTRL_PKEY_DIS ; 
 int HFI1_RCVCTRL_TAILUPD_DIS ; 
 int HFI1_SHUTDOWN ; 
 int HFI1_STATUS_IB_CONF ; 
 int HFI1_STATUS_IB_READY ; 
 int /*<<< orphan*/  IS_FIRST_SOURCE ; 
 int /*<<< orphan*/  IS_LAST_SOURCE ; 
 int /*<<< orphan*/  PSC_GLOBAL_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*) ; 
 struct hfi1_ctxtdata* FUNC2 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct hfi1_devdata *dd)
{
	struct hfi1_pportdata *ppd;
	struct hfi1_ctxtdata *rcd;
	unsigned pidx;
	int i;

	if (dd->flags & HFI1_SHUTDOWN)
		return;
	dd->flags |= HFI1_SHUTDOWN;

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;

		ppd->linkup = 0;
		if (ppd->statusp)
			*ppd->statusp &= ~(HFI1_STATUS_IB_CONF |
					   HFI1_STATUS_IB_READY);
	}
	dd->flags &= ~HFI1_INITTED;

	/* mask and clean up interrupts */
	FUNC10(dd, IS_FIRST_SOURCE, IS_LAST_SOURCE, false);
	FUNC5(dd);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		for (i = 0; i < dd->num_rcv_contexts; i++) {
			rcd = FUNC2(dd, i);
			FUNC4(dd, HFI1_RCVCTRL_TAILUPD_DIS |
				     HFI1_RCVCTRL_CTXT_DIS |
				     HFI1_RCVCTRL_INTRAVAIL_DIS |
				     HFI1_RCVCTRL_PKEY_DIS |
				     HFI1_RCVCTRL_ONE_PKT_EGR_DIS, rcd);
			FUNC3(rcd);
		}
		/*
		 * Gracefully stop all sends allowing any in progress to
		 * trickle out first.
		 */
		for (i = 0; i < dd->num_send_contexts; i++)
			FUNC8(dd->send_contexts[i].sc);
	}

	/*
	 * Enough for anything that's going to trickle out to have actually
	 * done so.
	 */
	FUNC12(20);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;

		/* disable all contexts */
		for (i = 0; i < dd->num_send_contexts; i++)
			FUNC7(dd->send_contexts[i].sc);
		/* disable the send device */
		FUNC6(dd, PSC_GLOBAL_DISABLE);

		FUNC11(ppd);

		/*
		 * Clear SerdesEnable.
		 * We can't count on interrupts since we are stopping.
		 */
		FUNC1(ppd);

		if (ppd->hfi1_wq) {
			FUNC0(ppd->hfi1_wq);
			ppd->hfi1_wq = NULL;
		}
		if (ppd->link_wq) {
			FUNC0(ppd->link_wq);
			ppd->link_wq = NULL;
		}
	}
	FUNC9(dd);
}