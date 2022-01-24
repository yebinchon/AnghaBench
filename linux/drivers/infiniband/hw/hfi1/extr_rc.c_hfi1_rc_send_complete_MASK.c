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
struct tid_rdma_request {scalar_t__ comp_seg; scalar_t__ total_segs; scalar_t__ ack_seg; scalar_t__ cur_seg; } ;
struct TYPE_2__ {size_t opcode; } ;
struct rvt_swqe {TYPE_1__ wr; scalar_t__ lpsn; } ;
struct rvt_qp {size_t state; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ s_acked; int s_flags; scalar_t__ s_last; scalar_t__ s_psn; scalar_t__ s_sending_hpsn; scalar_t__ s_sending_psn; int /*<<< orphan*/  s_rdma_ack_cnt; int /*<<< orphan*/  s_lock; struct hfi1_qp_priv* priv; } ;
struct ib_other_headers {int dummy; } ;
struct hfi1_qp_priv {scalar_t__ s_tid_head; scalar_t__ s_tid_cur; int s_flags; int /*<<< orphan*/  timeout_shift; } ;
struct hfi1_opa_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK ; 
 int /*<<< orphan*/  ATOMIC_ACKNOWLEDGE ; 
 int HFI1_S_TID_RETRY_TIMER ; 
 scalar_t__ IB_BTH_REQ_ACK ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 size_t IB_WR_TID_RDMA_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_FIRST ; 
 int /*<<< orphan*/  READ_REQ ; 
 int /*<<< orphan*/  READ_RESP ; 
 int /*<<< orphan*/  RESYNC ; 
 int RVT_PROCESS_RECV_OK ; 
 int RVT_SEND_OR_FLUSH_OR_RECV_OK ; 
 int RVT_S_TIMER ; 
 int RVT_S_WAIT_PSN ; 
 int RVT_S_WAIT_RNR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WRITE_DATA ; 
 int /*<<< orphan*/  WRITE_DATA_LAST ; 
 int /*<<< orphan*/  WRITE_REQ ; 
 int /*<<< orphan*/  WRITE_RESP ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*) ; 
 struct ib_other_headers* FUNC5 (struct hfi1_opa_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_qp*) ; 
 scalar_t__ FUNC7 (struct ib_other_headers*) ; 
 scalar_t__ FUNC8 (struct ib_other_headers*) ; 
 int /*<<< orphan*/ * ib_hfi1_wc_opcode ; 
 int* ib_rvt_state_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC12 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 struct rvt_swqe* FUNC13 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rvt_qp*,struct rvt_swqe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct rvt_qp*,struct rvt_swqe*) ; 
 struct tid_rdma_request* FUNC18 (struct rvt_swqe*) ; 

void FUNC19(struct rvt_qp *qp, struct hfi1_opa_header *opah)
{
	struct ib_other_headers *ohdr;
	struct hfi1_qp_priv *priv = qp->priv;
	struct rvt_swqe *wqe;
	u32 opcode, head, tail;
	u32 psn;
	struct tid_rdma_request *req;

	FUNC9(&qp->s_lock);
	if (!(ib_rvt_state_ops[qp->state] & RVT_SEND_OR_FLUSH_OR_RECV_OK))
		return;

	ohdr = FUNC5(opah);
	opcode = FUNC7(ohdr);
	if ((opcode >= FUNC0(RDMA_READ_RESPONSE_FIRST) &&
	     opcode <= FUNC0(ATOMIC_ACKNOWLEDGE)) ||
	    opcode == FUNC1(READ_RESP) ||
	    opcode == FUNC1(WRITE_RESP)) {
		FUNC2(!qp->s_rdma_ack_cnt);
		qp->s_rdma_ack_cnt--;
		return;
	}

	psn = FUNC8(ohdr);
	/*
	 * Don't attempt to reset the sending PSN for packets in the
	 * KDETH PSN space since the PSN does not match anything.
	 */
	if (opcode != FUNC1(WRITE_DATA) &&
	    opcode != FUNC1(WRITE_DATA_LAST) &&
	    opcode != FUNC1(ACK) && opcode != FUNC1(RESYNC))
		FUNC10(qp, psn);

	/* Handle TID RDMA WRITE packets differently */
	if (opcode >= FUNC1(WRITE_REQ) &&
	    opcode <= FUNC1(WRITE_DATA_LAST)) {
		head = priv->s_tid_head;
		tail = priv->s_tid_cur;
		/*
		 * s_tid_cur is set to s_tid_head in the case, where
		 * a new TID RDMA request is being started and all
		 * previous ones have been completed.
		 * Therefore, we need to do a secondary check in order
		 * to properly determine whether we should start the
		 * RC timer.
		 */
		wqe = FUNC13(qp, tail);
		req = FUNC18(wqe);
		if (head == tail && req->comp_seg < req->total_segs) {
			if (tail == 0)
				tail = qp->s_size - 1;
			else
				tail -= 1;
		}
	} else {
		head = qp->s_tail;
		tail = qp->s_acked;
	}

	/*
	 * Start timer after a packet requesting an ACK has been sent and
	 * there are still requests that haven't been acked.
	 */
	if ((psn & IB_BTH_REQ_ACK) && tail != head &&
	    opcode != FUNC1(WRITE_DATA) && opcode != FUNC1(WRITE_DATA_LAST) &&
	    opcode != FUNC1(RESYNC) &&
	    !(qp->s_flags &
	      (RVT_S_TIMER | RVT_S_WAIT_RNR | RVT_S_WAIT_PSN)) &&
	    (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK)) {
		if (opcode == FUNC1(READ_REQ))
			FUNC12(qp, priv->timeout_shift);
		else
			FUNC11(qp);
	}

	/* Start TID RDMA ACK timer */
	if ((opcode == FUNC1(WRITE_DATA) ||
	     opcode == FUNC1(WRITE_DATA_LAST) ||
	     opcode == FUNC1(RESYNC)) &&
	    (psn & IB_BTH_REQ_ACK) &&
	    !(priv->s_flags & HFI1_S_TID_RETRY_TIMER) &&
	    (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK)) {
		/*
		 * The TID RDMA ACK packet could be received before this
		 * function is called. Therefore, add the timer only if TID
		 * RDMA ACK packets are actually pending.
		 */
		wqe = FUNC13(qp, qp->s_acked);
		req = FUNC18(wqe);
		if (wqe->wr.opcode == IB_WR_TID_RDMA_WRITE &&
		    req->ack_seg < req->cur_seg)
			FUNC4(qp);
	}

	while (qp->s_last != qp->s_acked) {
		wqe = FUNC13(qp, qp->s_last);
		if (FUNC3(wqe->lpsn, qp->s_sending_psn) >= 0 &&
		    FUNC3(qp->s_sending_psn, qp->s_sending_hpsn) <= 0)
			break;
		FUNC17(qp, wqe);
		FUNC15(qp, wqe, qp->s_last);
		FUNC14(qp,
				     wqe,
				     ib_hfi1_wc_opcode[wqe->wr.opcode],
				     IB_WC_SUCCESS);
	}
	/*
	 * If we were waiting for sends to complete before re-sending,
	 * and they are now complete, restart sending.
	 */
	FUNC16(qp, psn);
	if (qp->s_flags & RVT_S_WAIT_PSN &&
	    FUNC3(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
		qp->s_flags &= ~RVT_S_WAIT_PSN;
		qp->s_sending_psn = qp->s_psn;
		qp->s_sending_hpsn = qp->s_psn - 1;
		FUNC6(qp);
	}
}