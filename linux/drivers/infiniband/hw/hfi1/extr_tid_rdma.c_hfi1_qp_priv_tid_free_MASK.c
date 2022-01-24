#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct rvt_swqe {struct hfi1_ack_priv* priv; } ;
struct TYPE_4__ {scalar_t__ qp_type; } ;
struct rvt_qp {size_t s_size; TYPE_2__* s_ack_queue; TYPE_1__ ibqp; struct hfi1_qp_priv* priv; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  opfn_work; } ;
struct hfi1_qp_priv {struct hfi1_ack_priv* pages; TYPE_3__ opfn; } ;
struct hfi1_ack_priv {int /*<<< orphan*/  tid_req; } ;
struct TYPE_5__ {struct hfi1_ack_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IB_QPT_RC ; 
 int /*<<< orphan*/  TID_RDMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ack_priv*) ; 
 struct rvt_swqe* FUNC4 (struct rvt_qp*,size_t) ; 
 size_t FUNC5 (struct rvt_dev_info*) ; 

void FUNC6(struct rvt_dev_info *rdi, struct rvt_qp *qp)
{
	struct hfi1_qp_priv *qpriv = qp->priv;
	struct rvt_swqe *wqe;
	u32 i;

	if (qp->ibqp.qp_type == IB_QPT_RC && FUNC0(TID_RDMA)) {
		for (i = 0; i < qp->s_size; i++) {
			wqe = FUNC4(qp, i);
			FUNC3(wqe->priv);
			wqe->priv = NULL;
		}
		for (i = 0; i < FUNC5(rdi); i++) {
			struct hfi1_ack_priv *priv = qp->s_ack_queue[i].priv;

			if (priv)
				FUNC2(&priv->tid_req);
			FUNC3(priv);
			qp->s_ack_queue[i].priv = NULL;
		}
		FUNC1(&qpriv->opfn.opfn_work);
		FUNC3(qpriv->pages);
		qpriv->pages = NULL;
	}
}