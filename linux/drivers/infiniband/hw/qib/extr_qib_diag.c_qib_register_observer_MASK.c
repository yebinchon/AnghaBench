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
struct qib_devdata {int /*<<< orphan*/  qib_diag_trans_lock; struct diag_observer_list_elt* diag_observer_list; } ;
struct diag_observer_list_elt {struct diag_observer_list_elt* next; struct diag_observer const* op; } ;
struct diag_observer {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct diag_observer_list_elt* FUNC2 (int) ; 

int FUNC3(struct qib_devdata *dd,
			  const struct diag_observer *op)
{
	struct diag_observer_list_elt *olp;
	unsigned long flags;

	if (!dd || !op)
		return -EINVAL;
	olp = FUNC2(sizeof(*olp));
	if (!olp)
		return -ENOMEM;

	FUNC0(&dd->qib_diag_trans_lock, flags);
	olp->op = op;
	olp->next = dd->diag_observer_list;
	dd->diag_observer_list = olp;
	FUNC1(&dd->qib_diag_trans_lock, flags);

	return 0;
}