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
typedef  int u32 ;
struct rvt_qp {int s_flags; int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*,int) ; 

void FUNC5(struct rvt_qp *qp, u32 flag)
{
	unsigned long flags;

	FUNC2(&qp->s_lock, flags);
	if (qp->s_flags & flag) {
		qp->s_flags &= ~flag;
		FUNC4(qp, flag);
		FUNC0(qp);
	}
	FUNC3(&qp->s_lock, flags);
	/* Notify hfi1_destroy_qp() if it is waiting. */
	FUNC1(qp);
}