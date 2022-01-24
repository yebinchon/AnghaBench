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
struct qib_devdata {unsigned int first_user_ctxt; unsigned int cfgctxts; int /*<<< orphan*/  uctxt_lock; struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {unsigned int pio_base; unsigned int piocnt; int subctxt_cnt; int /*<<< orphan*/ * user_event_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  _QIB_EVENT_DISARM_BUFS_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, unsigned bufn)
{
	struct qib_ctxtdata *rcd;
	unsigned ctxt;
	int ret = 0;

	FUNC1(&dd->uctxt_lock);
	for (ctxt = dd->first_user_ctxt; ctxt < dd->cfgctxts; ctxt++) {
		rcd = dd->rcd[ctxt];
		if (!rcd || bufn < rcd->pio_base ||
		    bufn >= rcd->pio_base + rcd->piocnt)
			continue;
		if (rcd->user_event_mask) {
			int i;
			/*
			 * subctxt_cnt is 0 if not shared, so do base
			 * separately, first, then remaining subctxt, if any
			 */
			FUNC0(_QIB_EVENT_DISARM_BUFS_BIT,
				&rcd->user_event_mask[0]);
			for (i = 1; i < rcd->subctxt_cnt; i++)
				FUNC0(_QIB_EVENT_DISARM_BUFS_BIT,
					&rcd->user_event_mask[i]);
		}
		ret = 1;
		break;
	}
	FUNC2(&dd->uctxt_lock);

	return ret;
}