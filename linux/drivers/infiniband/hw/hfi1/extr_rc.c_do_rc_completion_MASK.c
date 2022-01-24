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
typedef  size_t u8 ;
struct sdma_engine {int dummy; } ;
struct TYPE_6__ {size_t opcode; } ;
struct rvt_swqe {int /*<<< orphan*/  psn; int /*<<< orphan*/  lpsn; TYPE_3__ wr; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ state; scalar_t__ s_draining; int /*<<< orphan*/  s_psn; int /*<<< orphan*/  s_state; int /*<<< orphan*/  s_retry_cnt; int /*<<< orphan*/  s_retry; int /*<<< orphan*/  remote_ah_attr; int /*<<< orphan*/  s_last; int /*<<< orphan*/  s_sending_hpsn; int /*<<< orphan*/  s_sending_psn; int /*<<< orphan*/  s_lock; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_flags; } ;
struct hfi1_pportdata {TYPE_2__* dd; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rc_delayed_comp; } ;
struct hfi1_ibport {size_t* sl_to_sc; TYPE_1__ rvp; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int HFI1_HAS_SEND_DMA ; 
 int HFI1_S_TID_WAIT_INTERLCK ; 
 scalar_t__ IB_QPS_SQD ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 size_t IB_WR_TID_RDMA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEND_LAST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 
 int /*<<< orphan*/ * ib_hfi1_wc_opcode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 struct sdma_engine* FUNC5 (struct rvt_qp*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 struct rvt_swqe* FUNC7 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rvt_qp*,struct rvt_swqe*) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_qp*,int /*<<< orphan*/ ) ; 

struct rvt_swqe *FUNC15(struct rvt_qp *qp,
				  struct rvt_swqe *wqe,
				  struct hfi1_ibport *ibp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC3(&qp->s_lock);
	/*
	 * Don't decrement refcount and don't generate a
	 * completion if the SWQE is being resent until the send
	 * is finished.
	 */
	FUNC12(qp, wqe->lpsn);
	if (FUNC1(wqe->lpsn, qp->s_sending_psn) < 0 ||
	    FUNC1(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
		FUNC13(qp, wqe);
		FUNC11(qp, wqe, qp->s_last);
		FUNC8(qp,
				     wqe,
				     ib_hfi1_wc_opcode[wqe->wr.opcode],
				     IB_WC_SUCCESS);
	} else {
		struct hfi1_pportdata *ppd = FUNC4(ibp);

		FUNC10(*ibp->rvp.rc_delayed_comp);
		/*
		 * If send progress not running attempt to progress
		 * SDMA queue.
		 */
		if (ppd->dd->flags & HFI1_HAS_SEND_DMA) {
			struct sdma_engine *engine;
			u8 sl = FUNC6(&qp->remote_ah_attr);
			u8 sc5;

			/* For now use sc to find engine */
			sc5 = ibp->sl_to_sc[sl];
			engine = FUNC5(qp, sc5);
			FUNC9(engine);
		}
	}

	qp->s_retry = qp->s_retry_cnt;
	/*
	 * Don't update the last PSN if the request being completed is
	 * a TID RDMA WRITE request.
	 * Completion of the TID RDMA WRITE requests are done by the
	 * TID RDMA ACKs and as such could be for a request that has
	 * already been ACKed as far as the IB state machine is
	 * concerned.
	 */
	if (wqe->wr.opcode != IB_WR_TID_RDMA_WRITE)
		FUNC14(qp, wqe->lpsn);

	/*
	 * If we are completing a request which is in the process of
	 * being resent, we can stop re-sending it since we know the
	 * responder has already seen it.
	 */
	if (qp->s_acked == qp->s_cur) {
		if (++qp->s_cur >= qp->s_size)
			qp->s_cur = 0;
		qp->s_acked = qp->s_cur;
		wqe = FUNC7(qp, qp->s_cur);
		if (qp->s_acked != qp->s_tail) {
			qp->s_state = FUNC0(SEND_LAST);
			qp->s_psn = wqe->psn;
		}
	} else {
		if (++qp->s_acked >= qp->s_size)
			qp->s_acked = 0;
		if (qp->state == IB_QPS_SQD && qp->s_acked == qp->s_cur)
			qp->s_draining = 0;
		wqe = FUNC7(qp, qp->s_acked);
	}
	if (priv->s_flags & HFI1_S_TID_WAIT_INTERLCK) {
		priv->s_flags &= ~HFI1_S_TID_WAIT_INTERLCK;
		FUNC2(qp);
	}
	return wqe;
}