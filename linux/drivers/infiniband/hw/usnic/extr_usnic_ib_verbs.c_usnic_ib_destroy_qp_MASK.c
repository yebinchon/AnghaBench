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
struct usnic_ib_vf {TYPE_1__* pf; } ;
struct usnic_ib_qp_grp {int /*<<< orphan*/  link; int /*<<< orphan*/  grp_id; struct usnic_ib_vf* vf; } ;
struct ib_udata {int dummy; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  usdev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_ib_qp_grp*) ; 
 struct usnic_ib_qp_grp* FUNC4 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usnic_ib_qp_grp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct ib_qp *qp, struct ib_udata *udata)
{
	struct usnic_ib_qp_grp *qp_grp;
	struct usnic_ib_vf *vf;

	FUNC5("\n");

	qp_grp = FUNC4(qp);
	vf = qp_grp->vf;
	FUNC1(&vf->pf->usdev_lock);
	if (FUNC7(qp_grp, IB_QPS_RESET, NULL)) {
		FUNC6("Failed to move qp grp %u to reset\n",
				qp_grp->grp_id);
	}

	FUNC0(&qp_grp->link);
	FUNC3(qp_grp);
	FUNC2(&vf->pf->usdev_lock);

	return 0;
}