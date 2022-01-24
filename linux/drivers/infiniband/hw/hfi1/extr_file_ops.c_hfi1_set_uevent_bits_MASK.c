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
typedef  scalar_t__ u16 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {unsigned long* events; scalar_t__ first_dyn_alloc_ctxt; scalar_t__ num_rcv_contexts; } ;
struct hfi1_ctxtdata {int subctxt_cnt; } ;

/* Variables and functions */
 int EINVAL ; 
 struct hfi1_ctxtdata* FUNC0 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (int const,unsigned long*) ; 
 int FUNC3 (struct hfi1_ctxtdata*) ; 

int FUNC4(struct hfi1_pportdata *ppd, const int evtbit)
{
	struct hfi1_ctxtdata *uctxt;
	struct hfi1_devdata *dd = ppd->dd;
	u16 ctxt;

	if (!dd->events)
		return -EINVAL;

	for (ctxt = dd->first_dyn_alloc_ctxt; ctxt < dd->num_rcv_contexts;
	     ctxt++) {
		uctxt = FUNC0(dd, ctxt);
		if (uctxt) {
			unsigned long *evs;
			int i;
			/*
			 * subctxt_cnt is 0 if not shared, so do base
			 * separately, first, then remaining subctxt, if any
			 */
			evs = dd->events + FUNC3(uctxt);
			FUNC2(evtbit, evs);
			for (i = 1; i < uctxt->subctxt_cnt; i++)
				FUNC2(evtbit, evs + i);
			FUNC1(uctxt);
		}
	}

	return 0;
}