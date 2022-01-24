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
typedef  size_t u16 ;
struct hfi1_devdata {size_t num_rcv_contexts; int /*<<< orphan*/  uctxt_lock; struct hfi1_ctxtdata** rcd; } ;
struct hfi1_ctxtdata {size_t ctxt; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct hfi1_devdata *dd,
			      struct hfi1_ctxtdata *rcd, u16 *index)
{
	unsigned long flags;
	u16 ctxt;

	FUNC1(&dd->uctxt_lock, flags);
	for (ctxt = 0; ctxt < dd->num_rcv_contexts; ctxt++)
		if (!dd->rcd[ctxt])
			break;

	if (ctxt < dd->num_rcv_contexts) {
		rcd->ctxt = ctxt;
		dd->rcd[ctxt] = rcd;
		FUNC0(rcd);
	}
	FUNC2(&dd->uctxt_lock, flags);

	if (ctxt >= dd->num_rcv_contexts)
		return -EBUSY;

	*index = ctxt;

	return 0;
}