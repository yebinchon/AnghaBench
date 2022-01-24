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
typedef  int /*<<< orphan*/  u32 ;
struct tid_rdma_request {int dummy; } ;
struct TYPE_7__ {scalar_t__ opcode; } ;
struct rvt_swqe {TYPE_3__ wr; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_retry; scalar_t__ s_mig_state; scalar_t__ s_retry_cnt; scalar_t__ s_last; int s_flags; int /*<<< orphan*/  s_psn; int /*<<< orphan*/  port_num; TYPE_2__ ibqp; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  r_lock; struct hfi1_qp_priv* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  curr; } ;
struct hfi1_qp_priv {int /*<<< orphan*/  rcd; TYPE_1__ opfn; } ;
struct TYPE_8__ {scalar_t__ n_rc_resends; } ;
struct hfi1_ibport {TYPE_4__ rvp; } ;

/* Variables and functions */
 int HFI1_S_WAIT_TID_RESP ; 
 scalar_t__ IB_MIG_ARMED ; 
 int /*<<< orphan*/  IB_WC_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ IB_WR_OPFN ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 scalar_t__ IB_WR_TID_RDMA_READ ; 
 int RVT_S_SEND_ONE ; 
 int RVT_S_WAIT_ACK ; 
 int RVT_S_WAIT_FENCE ; 
 int RVT_S_WAIT_PSN ; 
 int RVT_S_WAIT_RDMAR ; 
 int RVT_S_WAIT_SSN_CREDIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvt_swqe* FUNC1 (struct rvt_qp*,struct rvt_swqe*,struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct tid_rdma_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 struct rvt_swqe* FUNC10 (struct rvt_qp*,scalar_t__) ; 
 struct hfi1_ibport* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC13 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 struct tid_rdma_request* FUNC14 (struct rvt_swqe*) ; 

void FUNC15(struct rvt_qp *qp, u32 psn, int wait)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct rvt_swqe *wqe = FUNC10(qp, qp->s_acked);
	struct hfi1_ibport *ibp;

	FUNC6(&qp->r_lock);
	FUNC6(&qp->s_lock);
	FUNC12(qp);
	if (qp->s_retry == 0) {
		if (qp->s_mig_state == IB_MIG_ARMED) {
			FUNC4(qp);
			qp->s_retry = qp->s_retry_cnt;
		} else if (qp->s_last == qp->s_acked) {
			/*
			 * We need special handling for the OPFN request WQEs as
			 * they are not allowed to generate real user errors
			 */
			if (wqe->wr.opcode == IB_WR_OPFN) {
				struct hfi1_ibport *ibp =
					FUNC11(qp->ibqp.device, qp->port_num);
				/*
				 * Call opfn_conn_reply() with capcode and
				 * remaining data as 0 to close out the
				 * current request
				 */
				FUNC7(qp, priv->opfn.curr);
				wqe = FUNC1(qp, wqe, ibp);
				qp->s_flags &= ~RVT_S_WAIT_ACK;
			} else {
				FUNC13(qp, 0);
				if (wqe->wr.opcode == IB_WR_TID_RDMA_READ) {
					struct tid_rdma_request *req;

					req = FUNC14(wqe);
					FUNC3(req);
					FUNC2(priv->rcd, qp);
				}

				FUNC5(qp, wqe,
							 IB_WC_RETRY_EXC_ERR);
				FUNC9(qp, IB_WC_WR_FLUSH_ERR);
			}
			return;
		} else { /* need to handle delayed completion */
			return;
		}
	} else {
		qp->s_retry--;
	}

	ibp = FUNC11(qp->ibqp.device, qp->port_num);
	if (wqe->wr.opcode == IB_WR_RDMA_READ ||
	    wqe->wr.opcode == IB_WR_TID_RDMA_READ)
		ibp->rvp.n_rc_resends++;
	else
		ibp->rvp.n_rc_resends += FUNC0(qp->s_psn, psn);

	qp->s_flags &= ~(RVT_S_WAIT_FENCE | RVT_S_WAIT_RDMAR |
			 RVT_S_WAIT_SSN_CREDIT | RVT_S_WAIT_PSN |
			 RVT_S_WAIT_ACK | HFI1_S_WAIT_TID_RESP);
	if (wait)
		qp->s_flags |= RVT_S_SEND_ONE;
	FUNC8(qp, psn);
}