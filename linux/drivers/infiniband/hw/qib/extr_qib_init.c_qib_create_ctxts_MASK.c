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
struct qib_pportdata {int dummy; } ;
struct qib_devdata {int assigned_node_id; unsigned int first_user_ctxt; int skip_kctxt_mask; unsigned int num_pports; int /*<<< orphan*/ * rcd; struct qib_pportdata* pport; int /*<<< orphan*/  ctxtcnt; TYPE_1__* pcidev; } ;
struct qib_ctxtdata {int seq_cnt; int /*<<< orphan*/ * pkeys; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QIB_DEFAULT_P_KEY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct qib_ctxtdata* FUNC4 (struct qib_pportdata*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*) ; 

int FUNC6(struct qib_devdata *dd)
{
	unsigned i;
	int local_node_id = FUNC3(dd->pcidev->bus);

	if (local_node_id < 0)
		local_node_id = FUNC2();
	dd->assigned_node_id = local_node_id;

	/*
	 * Allocate full ctxtcnt array, rather than just cfgctxts, because
	 * cleanup iterates across all possible ctxts.
	 */
	dd->rcd = FUNC0(dd->ctxtcnt, sizeof(*dd->rcd), GFP_KERNEL);
	if (!dd->rcd)
		return -ENOMEM;

	/* create (one or more) kctxt */
	for (i = 0; i < dd->first_user_ctxt; ++i) {
		struct qib_pportdata *ppd;
		struct qib_ctxtdata *rcd;

		if (dd->skip_kctxt_mask & (1 << i))
			continue;

		ppd = dd->pport + (i % dd->num_pports);

		rcd = FUNC4(ppd, i, dd->assigned_node_id);
		if (!rcd) {
			FUNC5(dd,
				"Unable to allocate ctxtdata for Kernel ctxt, failing\n");
			FUNC1(dd->rcd);
			dd->rcd = NULL;
			return -ENOMEM;
		}
		rcd->pkeys[0] = QIB_DEFAULT_P_KEY;
		rcd->seq_cnt = 1;
	}
	return 0;
}