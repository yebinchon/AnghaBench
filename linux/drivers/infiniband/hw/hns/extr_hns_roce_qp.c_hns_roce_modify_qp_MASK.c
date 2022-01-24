#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; } ;
struct ib_qp {int /*<<< orphan*/  qp_type; scalar_t__ uobject; int /*<<< orphan*/  device; } ;
struct TYPE_10__ {scalar_t__ virt_addr; } ;
struct TYPE_9__ {int head; } ;
struct TYPE_8__ {scalar_t__ virt_addr; } ;
struct TYPE_7__ {int head; } ;
struct hns_roce_qp {int sdb_en; int rdb_en; int /*<<< orphan*/  mutex; TYPE_4__ rdb; TYPE_3__ rq; TYPE_2__ sdb; TYPE_1__ sq; scalar_t__ state; } ;
struct TYPE_11__ {scalar_t__ min_wqes; } ;
struct hns_roce_dev {TYPE_6__* hw; int /*<<< orphan*/  ib_dev; TYPE_5__ caps; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_12__ {int (* modify_qp ) (struct ib_qp*,struct ib_qp_attr*,int,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int IB_QPS_ERR ; 
 int IB_QPS_RESET ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_STATE ; 
 int FUNC0 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ib_qp*,struct ib_qp_attr*,int,int,int) ; 
 struct hns_roce_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC8 (struct ib_qp*) ; 

int FUNC9(struct ib_qp *ibqp, struct ib_qp_attr *attr,
		       int attr_mask, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC7(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC8(ibqp);
	enum ib_qp_state cur_state, new_state;
	int ret = -EINVAL;

	FUNC4(&hr_qp->mutex);

	cur_state = attr_mask & IB_QP_CUR_STATE ?
		    attr->cur_qp_state : (enum ib_qp_state)hr_qp->state;
	new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;

	if (ibqp->uobject &&
	    (attr_mask & IB_QP_STATE) && new_state == IB_QPS_ERR) {
		if (hr_qp->sdb_en == 1) {
			hr_qp->sq.head = *(int *)(hr_qp->sdb.virt_addr);

			if (hr_qp->rdb_en == 1)
				hr_qp->rq.head = *(int *)(hr_qp->rdb.virt_addr);
		} else {
			FUNC3(&hr_dev->ib_dev,
				  "flush cqe is not supported in userspace!\n");
			goto out;
		}
	}

	if (!FUNC1(cur_state, new_state, ibqp->qp_type,
				attr_mask)) {
		FUNC2(&hr_dev->ib_dev, "ib_modify_qp_is_ok failed\n");
		goto out;
	}

	ret = FUNC0(ibqp, attr, attr_mask);
	if (ret)
		goto out;

	if (cur_state == new_state && cur_state == IB_QPS_RESET) {
		if (hr_dev->caps.min_wqes) {
			ret = -EPERM;
			FUNC2(&hr_dev->ib_dev,
				"cur_state=%d new_state=%d\n", cur_state,
				new_state);
		} else {
			ret = 0;
		}

		goto out;
	}

	ret = hr_dev->hw->modify_qp(ibqp, attr, attr_mask, cur_state,
				    new_state);

out:
	FUNC5(&hr_qp->mutex);

	return ret;
}