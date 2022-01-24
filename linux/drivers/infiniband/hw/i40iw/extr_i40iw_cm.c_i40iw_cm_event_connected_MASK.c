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
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/ * provider_data; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct i40iw_sc_dev {TYPE_2__* iw_priv_qp_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  sq_base; } ;
struct TYPE_7__ {TYPE_1__ qp_uk; } ;
struct i40iw_qp {int /*<<< orphan*/ * cm_id; TYPE_4__ ibqp; scalar_t__ page; TYPE_3__ sc_qp; scalar_t__ destroyed; } ;
struct i40iw_cm_core {int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  accelerated_list; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; struct i40iw_sc_dev sc_dev; } ;
struct i40iw_cm_node {scalar_t__ send_rdma0_op; int qhash_set; int accelerated; int /*<<< orphan*/  list; struct iw_cm_id* cm_id; } ;
struct i40iw_cm_event {struct i40iw_cm_node* cm_node; } ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_6__ {int /*<<< orphan*/  (* qp_send_rtt ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I40IW_DEBUG_CM ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  IW_CM_EVENT_CONNECT_REPLY ; 
 scalar_t__ SEND_RDMA_READ_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_qp*,struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct ib_qp_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_cm_node*) ; 
 int FUNC4 (struct i40iw_cm_node*,struct iw_cm_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_qp_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iw_cm_id*) ; 
 struct i40iw_device* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct i40iw_cm_event *event)
{
	struct i40iw_qp *iwqp;
	struct i40iw_device *iwdev;
	struct i40iw_cm_core *cm_core;
	struct i40iw_cm_node *cm_node;
	struct i40iw_sc_dev *dev;
	struct ib_qp_attr attr;
	struct iw_cm_id *cm_id;
	unsigned long flags;
	int status;
	bool read0;

	cm_node = event->cm_node;
	cm_id = cm_node->cm_id;
	iwqp = (struct i40iw_qp *)cm_id->provider_data;
	iwdev = FUNC13(iwqp->ibqp.device);
	dev = &iwdev->sc_dev;
	cm_core = &iwdev->cm_core;

	if (iwqp->destroyed) {
		status = -ETIMEDOUT;
		goto error;
	}
	FUNC0(iwqp, cm_node);
	read0 = (cm_node->send_rdma0_op == SEND_RDMA_READ_ZERO);
	if (iwqp->page)
		iwqp->sc_qp.qp_uk.sq_base = FUNC5(iwqp->page);
	dev->iw_priv_qp_ops->qp_send_rtt(&iwqp->sc_qp, read0);
	if (iwqp->page)
		FUNC6(iwqp->page);

	FUNC8(&attr, 0, sizeof(attr));
	attr.qp_state = IB_QPS_RTS;
	cm_node->qhash_set = false;
	FUNC2(&iwqp->ibqp, &attr, IB_QP_STATE, NULL);

	cm_node->accelerated = true;
	FUNC9(&cm_core->ht_lock, flags);
	FUNC7(&cm_node->list, &cm_core->accelerated_list);
	FUNC10(&cm_core->ht_lock, flags);
	status = FUNC4(cm_node, cm_id, IW_CM_EVENT_CONNECT_REPLY,
				     0);
	if (status)
		FUNC1(dev, I40IW_DEBUG_CM, "error sending cm event - CONNECT_REPLY\n");

	return;

error:
	iwqp->cm_id = NULL;
	cm_id->provider_data = NULL;
	FUNC4(event->cm_node,
			    cm_id,
			    IW_CM_EVENT_CONNECT_REPLY,
			    status);
	cm_id->rem_ref(cm_id);
	FUNC3(event->cm_node);
}