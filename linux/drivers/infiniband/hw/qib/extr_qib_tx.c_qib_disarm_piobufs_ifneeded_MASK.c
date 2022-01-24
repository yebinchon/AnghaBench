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
struct qib_devdata {int /*<<< orphan*/  pioavail_lock; int /*<<< orphan*/  (* f_sendctrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pio_need_disarm; } ;
struct qib_ctxtdata {unsigned int pio_base; unsigned int piocnt; unsigned int subctxt_cnt; int /*<<< orphan*/  ppd; int /*<<< orphan*/ * user_event_mask; struct qib_devdata* dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  _QIB_EVENT_DISARM_BUFS_BIT ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct qib_ctxtdata *rcd)
{
	struct qib_devdata *dd = rcd->dd;
	unsigned i;
	unsigned last;
	unsigned n = 0;

	last = rcd->pio_base + rcd->piocnt;
	/*
	 * Don't need uctxt_lock here, since user has called in to us.
	 * Clear at start in case more interrupts set bits while we
	 * are disarming
	 */
	if (rcd->user_event_mask) {
		/*
		 * subctxt_cnt is 0 if not shared, so do base
		 * separately, first, then remaining subctxt, if any
		 */
		FUNC2(_QIB_EVENT_DISARM_BUFS_BIT, &rcd->user_event_mask[0]);
		for (i = 1; i < rcd->subctxt_cnt; i++)
			FUNC2(_QIB_EVENT_DISARM_BUFS_BIT,
				  &rcd->user_event_mask[i]);
	}
	FUNC3(&dd->pioavail_lock);
	for (i = rcd->pio_base; i < last; i++) {
		if (FUNC1(i, dd->pio_need_disarm)) {
			n++;
			dd->f_sendctrl(rcd->ppd, FUNC0(i));
		}
	}
	FUNC4(&dd->pioavail_lock);
	return 0;
}