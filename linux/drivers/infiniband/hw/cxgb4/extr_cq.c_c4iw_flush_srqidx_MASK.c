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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  recv_cq; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; TYPE_1__ ibqp; } ;
struct c4iw_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct c4iw_cq* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct c4iw_qp *qhp, u32 srqidx)
{
	struct c4iw_cq *rchp = FUNC5(qhp->ibqp.recv_cq);
	unsigned long flag;

	/* locking heirarchy: cq lock first, then qp lock. */
	FUNC2(&rchp->lock, flag);
	FUNC1(&qhp->lock);

	/* create a SRQ RECV CQE for srqidx */
	FUNC0(&qhp->wq, &rchp->cq, srqidx);

	FUNC3(&qhp->lock);
	FUNC4(&rchp->lock, flag);
}