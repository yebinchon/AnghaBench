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
struct qib_pportdata {TYPE_1__* dd; } ;
struct qib_ctxtdata {int subctxt_cnt; int /*<<< orphan*/ * user_event_mask; } ;
struct TYPE_2__ {unsigned int first_user_ctxt; unsigned int cfgctxts; int /*<<< orphan*/  uctxt_lock; struct qib_ctxtdata** rcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct qib_pportdata *ppd, const int evtbit)
{
	struct qib_ctxtdata *rcd;
	unsigned ctxt;
	int ret = 0;
	unsigned long flags;

	FUNC1(&ppd->dd->uctxt_lock, flags);
	for (ctxt = ppd->dd->first_user_ctxt; ctxt < ppd->dd->cfgctxts;
	     ctxt++) {
		rcd = ppd->dd->rcd[ctxt];
		if (!rcd)
			continue;
		if (rcd->user_event_mask) {
			int i;
			/*
			 * subctxt_cnt is 0 if not shared, so do base
			 * separately, first, then remaining subctxt, if any
			 */
			FUNC0(evtbit, &rcd->user_event_mask[0]);
			for (i = 1; i < rcd->subctxt_cnt; i++)
				FUNC0(evtbit, &rcd->user_event_mask[i]);
		}
		ret = 1;
		break;
	}
	FUNC2(&ppd->dd->uctxt_lock, flags);

	return ret;
}