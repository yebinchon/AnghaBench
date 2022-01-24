#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct mthca_qp {int state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  transport; TYPE_2__ sq; TYPE_1__ rq; } ;
struct TYPE_8__ {int rdb_shift; } ;
struct TYPE_7__ {scalar_t__ pkey_table_len; scalar_t__ num_ports; scalar_t__ max_qp_init_rdma; } ;
struct mthca_dev {TYPE_4__ qp_table; TYPE_3__ limits; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; scalar_t__ pkey_index; scalar_t__ port_num; scalar_t__ max_rd_atomic; int max_dest_rd_atomic; } ;
struct ib_qp {int /*<<< orphan*/  qp_type; int /*<<< orphan*/  device; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int EINVAL ; 
 int IB_QPS_RESET ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_MAX_DEST_RD_ATOMIC ; 
 int IB_QP_MAX_QP_RD_ATOMIC ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int FUNC0 (struct ib_qp*,struct ib_qp_attr*,int,int,int,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mthca_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mthca_qp* FUNC10 (struct ib_qp*) ; 

int FUNC11(struct ib_qp *ibqp, struct ib_qp_attr *attr, int attr_mask,
		    struct ib_udata *udata)
{
	struct mthca_dev *dev = FUNC9(ibqp->device);
	struct mthca_qp *qp = FUNC10(ibqp);
	enum ib_qp_state cur_state, new_state;
	int err = -EINVAL;

	FUNC3(&qp->mutex);
	if (attr_mask & IB_QP_CUR_STATE) {
		cur_state = attr->cur_qp_state;
	} else {
		FUNC6(&qp->sq.lock);
		FUNC5(&qp->rq.lock);
		cur_state = qp->state;
		FUNC7(&qp->rq.lock);
		FUNC8(&qp->sq.lock);
	}

	new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;

	if (!FUNC1(cur_state, new_state, ibqp->qp_type,
				attr_mask)) {
		FUNC2(dev, "Bad QP transition (transport %d) "
			  "%d->%d with attr 0x%08x\n",
			  qp->transport, cur_state, new_state,
			  attr_mask);
		goto out;
	}

	if ((attr_mask & IB_QP_PKEY_INDEX) &&
	     attr->pkey_index >= dev->limits.pkey_table_len) {
		FUNC2(dev, "P_Key index (%u) too large. max is %d\n",
			  attr->pkey_index, dev->limits.pkey_table_len-1);
		goto out;
	}

	if ((attr_mask & IB_QP_PORT) &&
	    (attr->port_num == 0 || attr->port_num > dev->limits.num_ports)) {
		FUNC2(dev, "Port number (%u) is invalid\n", attr->port_num);
		goto out;
	}

	if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC &&
	    attr->max_rd_atomic > dev->limits.max_qp_init_rdma) {
		FUNC2(dev, "Max rdma_atomic as initiator %u too large (max is %d)\n",
			  attr->max_rd_atomic, dev->limits.max_qp_init_rdma);
		goto out;
	}

	if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC &&
	    attr->max_dest_rd_atomic > 1 << dev->qp_table.rdb_shift) {
		FUNC2(dev, "Max rdma_atomic as responder %u too large (max %d)\n",
			  attr->max_dest_rd_atomic, 1 << dev->qp_table.rdb_shift);
		goto out;
	}

	if (cur_state == new_state && cur_state == IB_QPS_RESET) {
		err = 0;
		goto out;
	}

	err = FUNC0(ibqp, attr, attr_mask, cur_state, new_state,
				udata);

out:
	FUNC4(&qp->mutex);
	return err;
}