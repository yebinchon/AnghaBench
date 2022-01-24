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
struct hfi1_devdata {size_t first_dyn_alloc_ctxt; int /*<<< orphan*/ * rcd; int /*<<< orphan*/  pport; int /*<<< orphan*/  node; int /*<<< orphan*/  num_rcv_contexts; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hfi1_devdata *dd)
{
	u16 i;
	int ret;

	dd->rcd = FUNC2(dd->num_rcv_contexts, sizeof(*dd->rcd),
			       GFP_KERNEL, dd->node);
	if (!dd->rcd)
		return -ENOMEM;

	for (i = 0; i < dd->first_dyn_alloc_ctxt; ++i) {
		ret = FUNC0(dd, dd->pport);
		if (ret)
			goto bail;
	}

	return 0;
bail:
	for (i = 0; dd->rcd && i < dd->first_dyn_alloc_ctxt; ++i)
		FUNC1(dd->rcd[i]);

	/* All the contexts should be freed, free the array */
	FUNC3(dd->rcd);
	dd->rcd = NULL;
	return ret;
}