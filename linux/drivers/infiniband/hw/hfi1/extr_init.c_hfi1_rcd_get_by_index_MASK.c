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
struct hfi1_devdata {int /*<<< orphan*/  uctxt_lock; struct hfi1_ctxtdata** rcd; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct hfi1_ctxtdata *FUNC3(struct hfi1_devdata *dd, u16 ctxt)
{
	unsigned long flags;
	struct hfi1_ctxtdata *rcd = NULL;

	FUNC1(&dd->uctxt_lock, flags);
	if (dd->rcd[ctxt]) {
		rcd = dd->rcd[ctxt];
		if (!FUNC0(rcd))
			rcd = NULL;
	}
	FUNC2(&dd->uctxt_lock, flags);

	return rcd;
}