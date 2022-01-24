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
struct usnic_ib_qp_grp {scalar_t__ state; int /*<<< orphan*/  res_chunk_list; TYPE_1__* vf; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC5 (struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC6 (struct usnic_ib_qp_grp*) ; 

void FUNC7(struct usnic_ib_qp_grp *qp_grp)
{

	FUNC0(qp_grp->state != IB_QPS_RESET);
	FUNC3(&qp_grp->vf->lock);

	FUNC5(qp_grp);
	FUNC6(qp_grp);
	FUNC4(qp_grp);
	FUNC1(qp_grp->res_chunk_list);
	FUNC2(qp_grp);
}