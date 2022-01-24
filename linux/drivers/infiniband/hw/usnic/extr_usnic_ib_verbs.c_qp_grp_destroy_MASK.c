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
struct usnic_ib_vf {int /*<<< orphan*/  lock; } ;
struct usnic_ib_qp_grp {scalar_t__ state; struct usnic_ib_vf* vf; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_ib_qp_grp*) ; 

__attribute__((used)) static void FUNC4(struct usnic_ib_qp_grp *qp_grp)
{
	struct usnic_ib_vf *vf = qp_grp->vf;

	FUNC0(qp_grp->state != IB_QPS_RESET);

	FUNC1(&vf->lock);
	FUNC3(qp_grp);
	FUNC2(&vf->lock);
}