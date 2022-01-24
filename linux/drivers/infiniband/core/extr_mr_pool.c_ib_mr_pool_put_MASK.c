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
struct list_head {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  mr_lock; int /*<<< orphan*/  mrs_used; } ;
struct ib_mr {int /*<<< orphan*/  qp_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ib_qp *qp, struct list_head *list, struct ib_mr *mr)
{
	unsigned long flags;

	FUNC1(&qp->mr_lock, flags);
	FUNC0(&mr->qp_entry, list);
	qp->mrs_used--;
	FUNC2(&qp->mr_lock, flags);
}