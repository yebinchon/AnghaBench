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
struct hfi1_devdata {int /*<<< orphan*/  uctxt_lock; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  wait; int /*<<< orphan*/  urgent; int /*<<< orphan*/  event_flags; int /*<<< orphan*/  in_use_ctxts; struct hfi1_devdata* dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_CTXT_WAITING_RCV ; 
 int /*<<< orphan*/  HFI1_CTXT_WAITING_URG ; 
 int /*<<< orphan*/  HFI1_MAX_SHARED_CTXTS ; 
 int /*<<< orphan*/  HFI1_RCVCTRL_INTRAVAIL_DIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct hfi1_ctxtdata *rcd)
{
	struct hfi1_devdata *dd = rcd->dd;
	unsigned long flags;

	FUNC2(&dd->uctxt_lock, flags);
	if (FUNC0(rcd->in_use_ctxts, HFI1_MAX_SHARED_CTXTS))
		goto done;

	if (FUNC4(HFI1_CTXT_WAITING_RCV, &rcd->event_flags)) {
		FUNC5(&rcd->wait);
		FUNC1(dd, HFI1_RCVCTRL_INTRAVAIL_DIS, rcd);
	} else if (FUNC4(HFI1_CTXT_WAITING_URG,
							&rcd->event_flags)) {
		rcd->urgent++;
		FUNC5(&rcd->wait);
	}
done:
	FUNC3(&dd->uctxt_lock, flags);
}