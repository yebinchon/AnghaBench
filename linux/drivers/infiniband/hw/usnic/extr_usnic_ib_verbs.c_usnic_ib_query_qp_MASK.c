#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usnic_ib_vf {TYPE_2__* pf; } ;
struct TYPE_3__ {int qp_type; } ;
struct usnic_ib_qp_grp {TYPE_1__ ibqp; int /*<<< orphan*/  state; struct usnic_ib_vf* vf; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  qkey; int /*<<< orphan*/  cur_qp_state; int /*<<< orphan*/  qp_state; } ;
struct ib_qp_attr {int /*<<< orphan*/  qkey; int /*<<< orphan*/  cur_qp_state; int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  usdev_lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IB_QPT_UD 128 
 int /*<<< orphan*/  FUNC0 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usnic_ib_qp_grp* FUNC3 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct ib_qp *qp, struct ib_qp_attr *qp_attr,
				int qp_attr_mask,
				struct ib_qp_init_attr *qp_init_attr)
{
	struct usnic_ib_qp_grp *qp_grp;
	struct usnic_ib_vf *vf;
	int err;

	FUNC4("\n");

	FUNC0(qp_attr, 0, sizeof(*qp_attr));
	FUNC0(qp_init_attr, 0, sizeof(*qp_init_attr));

	qp_grp = FUNC3(qp);
	vf = qp_grp->vf;
	FUNC1(&vf->pf->usdev_lock);
	FUNC4("\n");
	qp_attr->qp_state = qp_grp->state;
	qp_attr->cur_qp_state = qp_grp->state;

	switch (qp_grp->ibqp.qp_type) {
	case IB_QPT_UD:
		qp_attr->qkey = 0;
		break;
	default:
		FUNC5("Unexpected qp_type %d\n", qp_grp->ibqp.qp_type);
		err = -EINVAL;
		goto err_out;
	}

	FUNC2(&vf->pf->usdev_lock);
	return 0;

err_out:
	FUNC2(&vf->pf->usdev_lock);
	return err;
}