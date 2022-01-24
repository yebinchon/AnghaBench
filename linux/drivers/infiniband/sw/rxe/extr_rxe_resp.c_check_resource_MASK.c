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
struct rxe_srq {int dummy; } ;
struct TYPE_6__ {scalar_t__ state; void* wqe; void* status; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {scalar_t__ max_dest_rd_atomic; } ;
struct rxe_qp {TYPE_3__ resp; TYPE_2__ rq; TYPE_1__ attr; struct rxe_srq* srq; } ;
struct rxe_pkt_info {int mask; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 void* IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ QP_STATE_ERROR ; 
 int RESPST_CHK_LENGTH ; 
 int RESPST_COMPLETE ; 
 int RESPST_ERR_RNR ; 
 int RESPST_ERR_TOO_MANY_RDMA_ATM_REQ ; 
 int RESPST_EXIT ; 
 int RXE_READ_OR_ATOMIC ; 
 int RXE_RWR_MASK ; 
 int FUNC0 (struct rxe_qp*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum resp_states FUNC3(struct rxe_qp *qp,
				       struct rxe_pkt_info *pkt)
{
	struct rxe_srq *srq = qp->srq;

	if (qp->resp.state == QP_STATE_ERROR) {
		if (qp->resp.wqe) {
			qp->resp.status = IB_WC_WR_FLUSH_ERR;
			return RESPST_COMPLETE;
		} else if (!srq) {
			qp->resp.wqe = FUNC2(qp->rq.queue);
			if (qp->resp.wqe) {
				qp->resp.status = IB_WC_WR_FLUSH_ERR;
				return RESPST_COMPLETE;
			} else {
				return RESPST_EXIT;
			}
		} else {
			return RESPST_EXIT;
		}
	}

	if (pkt->mask & RXE_READ_OR_ATOMIC) {
		/* it is the requesters job to not send
		 * too many read/atomic ops, we just
		 * recycle the responder resource queue
		 */
		if (FUNC1(qp->attr.max_dest_rd_atomic > 0))
			return RESPST_CHK_LENGTH;
		else
			return RESPST_ERR_TOO_MANY_RDMA_ATM_REQ;
	}

	if (pkt->mask & RXE_RWR_MASK) {
		if (srq)
			return FUNC0(qp);

		qp->resp.wqe = FUNC2(qp->rq.queue);
		return (qp->resp.wqe) ? RESPST_CHK_LENGTH : RESPST_ERR_RNR;
	}

	return RESPST_CHK_LENGTH;
}