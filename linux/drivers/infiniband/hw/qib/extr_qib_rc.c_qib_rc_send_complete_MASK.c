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
typedef  int u32 ;
struct TYPE_6__ {size_t opcode; } ;
struct rvt_swqe {TYPE_3__ wr; scalar_t__ lpsn; } ;
struct rvt_qp {size_t state; scalar_t__ s_acked; scalar_t__ s_tail; int s_flags; scalar_t__ s_last; scalar_t__ s_psn; scalar_t__ s_sending_hpsn; scalar_t__ s_sending_psn; int /*<<< orphan*/  s_rdma_ack_cnt; } ;
struct ib_other_headers {int /*<<< orphan*/ * bth; } ;
struct TYPE_4__ {struct ib_other_headers oth; } ;
struct TYPE_5__ {TYPE_1__ l; struct ib_other_headers oth; } ;
struct ib_header {TYPE_2__ u; int /*<<< orphan*/ * lrh; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACKNOWLEDGE ; 
 int IB_BTH_REQ_ACK ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QIB_LRH_BTH ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_FIRST ; 
 int RVT_PROCESS_RECV_OK ; 
 int RVT_SEND_OR_FLUSH_OR_RECV_OK ; 
 int RVT_S_TIMER ; 
 int RVT_S_WAIT_PSN ; 
 int RVT_S_WAIT_RNR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ib_qib_wc_opcode ; 
 int* ib_rvt_state_ops ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*) ; 
 struct rvt_swqe* FUNC8 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct rvt_qp *qp, struct ib_header *hdr)
{
	struct ib_other_headers *ohdr;
	struct rvt_swqe *wqe;
	u32 opcode;
	u32 psn;

	if (!(ib_rvt_state_ops[qp->state] & RVT_SEND_OR_FLUSH_OR_RECV_OK))
		return;

	/* Find out where the BTH is */
	if ((FUNC2(hdr->lrh[0]) & 3) == QIB_LRH_BTH)
		ohdr = &hdr->u.oth;
	else
		ohdr = &hdr->u.l.oth;

	opcode = FUNC3(ohdr->bth[0]) >> 24;
	if (opcode >= FUNC0(RDMA_READ_RESPONSE_FIRST) &&
	    opcode <= FUNC0(ATOMIC_ACKNOWLEDGE)) {
		FUNC1(!qp->s_rdma_ack_cnt);
		qp->s_rdma_ack_cnt--;
		return;
	}

	psn = FUNC3(ohdr->bth[2]);
	FUNC6(qp, psn);

	/*
	 * Start timer after a packet requesting an ACK has been sent and
	 * there are still requests that haven't been acked.
	 */
	if ((psn & IB_BTH_REQ_ACK) && qp->s_acked != qp->s_tail &&
	    !(qp->s_flags & (RVT_S_TIMER | RVT_S_WAIT_RNR | RVT_S_WAIT_PSN)) &&
	    (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK))
		FUNC7(qp);

	while (qp->s_last != qp->s_acked) {
		wqe = FUNC8(qp, qp->s_last);
		if (FUNC4(wqe->lpsn, qp->s_sending_psn) >= 0 &&
		    FUNC4(qp->s_sending_psn, qp->s_sending_hpsn) <= 0)
			break;
		FUNC9(qp,
				     wqe,
				     ib_qib_wc_opcode[wqe->wr.opcode],
				     IB_WC_SUCCESS);
	}
	/*
	 * If we were waiting for sends to complete before resending,
	 * and they are now complete, restart sending.
	 */
	if (qp->s_flags & RVT_S_WAIT_PSN &&
	    FUNC4(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
		qp->s_flags &= ~RVT_S_WAIT_PSN;
		qp->s_sending_psn = qp->s_psn;
		qp->s_sending_hpsn = qp->s_psn - 1;
		FUNC5(qp);
	}
}