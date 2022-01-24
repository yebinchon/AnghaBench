#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rvt_swqe {struct hfi1_swqe_priv* priv; } ;
struct rvt_qp {int s_size; TYPE_5__* s_ack_queue; struct hfi1_qp_priv* priv; } ;
struct rvt_dev_info {int dummy; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; } ;
struct TYPE_12__ {TYPE_5__* ack; struct rvt_swqe* swqe; } ;
struct TYPE_15__ {TYPE_4__ e; } ;
struct hfi1_swqe_priv {TYPE_7__ tid_req; } ;
struct TYPE_11__ {int /*<<< orphan*/  generation; void* last_index; void* index; scalar_t__ psn; } ;
struct TYPE_10__ {int /*<<< orphan*/  trigger_work; } ;
struct TYPE_9__ {int /*<<< orphan*/  opfn_work; int /*<<< orphan*/  lock; } ;
struct hfi1_qp_priv {void* pages; TYPE_6__* rcd; int /*<<< orphan*/  tid_wait; int /*<<< orphan*/  s_tid_retry_timer; int /*<<< orphan*/  s_tid_timer; int /*<<< orphan*/  n_tid_requests; int /*<<< orphan*/  n_requests; void* r_tid_alloc; void* r_tid_ack; void* r_tid_tail; void* r_tid_head; int /*<<< orphan*/  rnr_nak_state; void* s_tid_tail; void* s_tid_head; void* s_tid_cur; int /*<<< orphan*/  s_state; TYPE_3__ flow_state; TYPE_2__ tid_rdma; TYPE_1__ opfn; } ;
struct hfi1_devdata {int /*<<< orphan*/  node; } ;
struct hfi1_ack_priv {TYPE_7__ tid_req; } ;
struct TYPE_14__ {struct hfi1_devdata* dd; } ;
struct TYPE_13__ {struct hfi1_ack_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* HFI1_QP_WQE_INVALID ; 
 scalar_t__ IB_QPT_RC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_GENERATION_RESERVED ; 
 void* RXE_NUM_TID_FLOWS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TID_RDMA ; 
 int TID_RDMA_MAX_PAGES ; 
 int /*<<< orphan*/  TID_RNR_NAK_INIT ; 
 int /*<<< orphan*/  WRITE_RESP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*,TYPE_7__*) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfi1_tid_retry_timeout ; 
 int /*<<< orphan*/  hfi1_tid_timeout ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_ack_priv*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opfn_send_conn_request ; 
 TYPE_6__* FUNC9 (struct rvt_dev_info*,struct rvt_qp*) ; 
 struct rvt_swqe* FUNC10 (struct rvt_qp*,int) ; 
 int FUNC11 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tid_rdma_trigger_resume ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct rvt_dev_info *rdi, struct rvt_qp *qp,
		      struct ib_qp_init_attr *init_attr)
{
	struct hfi1_qp_priv *qpriv = qp->priv;
	int i, ret;

	qpriv->rcd = FUNC9(rdi, qp);

	FUNC12(&qpriv->opfn.lock);
	FUNC2(&qpriv->opfn.opfn_work, opfn_send_conn_request);
	FUNC2(&qpriv->tid_rdma.trigger_work, tid_rdma_trigger_resume);
	qpriv->flow_state.psn = 0;
	qpriv->flow_state.index = RXE_NUM_TID_FLOWS;
	qpriv->flow_state.last_index = RXE_NUM_TID_FLOWS;
	qpriv->flow_state.generation = KERN_GENERATION_RESERVED;
	qpriv->s_state = FUNC3(WRITE_RESP);
	qpriv->s_tid_cur = HFI1_QP_WQE_INVALID;
	qpriv->s_tid_head = HFI1_QP_WQE_INVALID;
	qpriv->s_tid_tail = HFI1_QP_WQE_INVALID;
	qpriv->rnr_nak_state = TID_RNR_NAK_INIT;
	qpriv->r_tid_head = HFI1_QP_WQE_INVALID;
	qpriv->r_tid_tail = HFI1_QP_WQE_INVALID;
	qpriv->r_tid_ack = HFI1_QP_WQE_INVALID;
	qpriv->r_tid_alloc = HFI1_QP_WQE_INVALID;
	FUNC4(&qpriv->n_requests, 0);
	FUNC4(&qpriv->n_tid_requests, 0);
	FUNC13(&qpriv->s_tid_timer, hfi1_tid_timeout, 0);
	FUNC13(&qpriv->s_tid_retry_timer, hfi1_tid_retry_timeout, 0);
	FUNC1(&qpriv->tid_wait);

	if (init_attr->qp_type == IB_QPT_RC && FUNC0(TID_RDMA)) {
		struct hfi1_devdata *dd = qpriv->rcd->dd;

		qpriv->pages = FUNC8(TID_RDMA_MAX_PAGES *
						sizeof(*qpriv->pages),
					    GFP_KERNEL, dd->node);
		if (!qpriv->pages)
			return -ENOMEM;
		for (i = 0; i < qp->s_size; i++) {
			struct hfi1_swqe_priv *priv;
			struct rvt_swqe *wqe = FUNC10(qp, i);

			priv = FUNC8(sizeof(*priv), GFP_KERNEL,
					    dd->node);
			if (!priv)
				return -ENOMEM;

			FUNC5(qp, &priv->tid_req);
			priv->tid_req.e.swqe = wqe;
			wqe->priv = priv;
		}
		for (i = 0; i < FUNC11(rdi); i++) {
			struct hfi1_ack_priv *priv;

			priv = FUNC8(sizeof(*priv), GFP_KERNEL,
					    dd->node);
			if (!priv)
				return -ENOMEM;

			FUNC5(qp, &priv->tid_req);
			priv->tid_req.e.ack = &qp->s_ack_queue[i];

			ret = FUNC6(&priv->tid_req,
							    GFP_KERNEL);
			if (ret) {
				FUNC7(priv);
				return ret;
			}
			qp->s_ack_queue[i].priv = priv;
		}
	}

	return 0;
}