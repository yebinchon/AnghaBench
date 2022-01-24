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
typedef  scalar_t__ u32 ;
struct tid_rdma_request {scalar_t__ total_segs; scalar_t__ ack_pending; scalar_t__ comp_seg; } ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct rvt_swqe {scalar_t__ psn; int /*<<< orphan*/  lpsn; TYPE_1__ wr; } ;
struct rvt_qp {scalar_t__ s_num_rd_atomic; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {scalar_t__ pkts_ps; int /*<<< orphan*/  pending_tid_r_segs; } ;

/* Variables and functions */
 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ; 
 scalar_t__ IB_WR_ATOMIC_FETCH_AND_ADD ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 scalar_t__ IB_WR_TID_RDMA_READ ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct tid_rdma_request*) ; 
 struct tid_rdma_request* FUNC2 (struct rvt_swqe*) ; 

__attribute__((used)) static void FUNC3(struct rvt_qp *qp, u32 psn,
				 struct rvt_swqe *wqe)
{
	u32 opcode = wqe->wr.opcode;

	if (opcode == IB_WR_RDMA_READ ||
	    opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
	    opcode == IB_WR_ATOMIC_FETCH_AND_ADD) {
		qp->s_num_rd_atomic++;
	} else if (opcode == IB_WR_TID_RDMA_READ) {
		struct tid_rdma_request *req = FUNC2(wqe);
		struct hfi1_qp_priv *priv = qp->priv;

		if (FUNC0(psn, wqe->lpsn) <= 0) {
			u32 cur_seg;

			cur_seg = (psn - wqe->psn) / priv->pkts_ps;
			req->ack_pending = cur_seg - req->comp_seg;
			priv->pending_tid_r_segs += req->ack_pending;
			qp->s_num_rd_atomic += req->ack_pending;
			FUNC1(qp, 0,
								wqe->wr.opcode,
								wqe->psn,
								wqe->lpsn,
								req);
		} else {
			priv->pending_tid_r_segs += req->total_segs;
			qp->s_num_rd_atomic += req->total_segs;
		}
	}
}