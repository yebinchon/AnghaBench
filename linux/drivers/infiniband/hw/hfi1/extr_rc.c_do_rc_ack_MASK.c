#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_11__ {scalar_t__ opcode; } ;
struct rvt_swqe {int lpsn; int psn; TYPE_5__ wr; TYPE_4__* sg_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {scalar_t__ s_acked; int s_last_psn; int s_flags; scalar_t__ s_tail; scalar_t__ s_cur; int s_psn; int s_state; int s_rnr_retry; int s_rnr_retry_cnt; scalar_t__ s_last; int /*<<< orphan*/  s_retry_cnt; int /*<<< orphan*/  s_retry; TYPE_1__ ibqp; scalar_t__ s_num_rd_atomic; int /*<<< orphan*/  s_lock; struct hfi1_qp_priv* priv; } ;
struct rvt_dev_info {TYPE_2__* post_parms; } ;
struct hfi1_qp_priv {scalar_t__ s_tid_cur; int /*<<< orphan*/  pending_tid_w_resp; int /*<<< orphan*/  timeout_shift; } ;
struct TYPE_9__ {int n_rc_resends; int /*<<< orphan*/  n_other_naks; int /*<<< orphan*/  n_seq_naks; int /*<<< orphan*/  n_rnr_naks; int /*<<< orphan*/ * rc_acks; } ;
struct hfi1_ibport {TYPE_3__ rvp; } ;
struct hfi1_ctxtdata {int dummy; } ;
typedef  enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_12__ {int /*<<< orphan*/  ack_pending; } ;
struct TYPE_10__ {int /*<<< orphan*/ * vaddr; } ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACKNOWLEDGE ; 
 scalar_t__ HFI1_QP_WQE_INVALID ; 
 int IB_AETH_CREDIT_MASK ; 
 int IB_AETH_CREDIT_SHIFT ; 
 int IB_AETH_NAK_SHIFT ; 
 int IB_WC_REM_ACCESS_ERR ; 
 int IB_WC_REM_INV_REQ_ERR ; 
 int IB_WC_REM_OP_ERR ; 
 int IB_WC_RNR_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ; 
 scalar_t__ IB_WR_ATOMIC_FETCH_AND_ADD ; 
 scalar_t__ IB_WR_OPFN ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 scalar_t__ IB_WR_TID_RDMA_READ ; 
 scalar_t__ IB_WR_TID_RDMA_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_LAST ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_ONLY ; 
 int /*<<< orphan*/  READ_RESP ; 
 int RVT_OPERATION_IGN_RNR_CNT ; 
 int RVT_S_WAIT_ACK ; 
 int RVT_S_WAIT_FENCE ; 
 int RVT_S_WAIT_RDMAR ; 
 int RVT_S_WAIT_RNR ; 
 int RVT_S_WAIT_SSN_CREDIT ; 
 int /*<<< orphan*/  SEND_LAST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_RESP ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 struct rvt_swqe* FUNC4 (struct rvt_qp*,struct rvt_swqe*,struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_qp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvt_qp*,struct rvt_swqe*,int) ; 
 struct rvt_dev_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC12 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rvt_qp*,int) ; 
 struct rvt_swqe* FUNC17 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC19 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC21 (struct rvt_qp*,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct rvt_qp*,int,int,struct rvt_swqe*) ; 
 int /*<<< orphan*/  FUNC24 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC25 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct rvt_qp*,int,int,int) ; 
 TYPE_6__* FUNC27 (struct rvt_swqe*) ; 

int FUNC28(struct rvt_qp *qp, u32 aeth, u32 psn, int opcode,
	      u64 val, struct hfi1_ctxtdata *rcd)
{
	struct hfi1_ibport *ibp;
	enum ib_wc_status status;
	struct hfi1_qp_priv *qpriv = qp->priv;
	struct rvt_swqe *wqe;
	int ret = 0;
	u32 ack_psn;
	int diff;
	struct rvt_dev_info *rdi;

	FUNC10(&qp->s_lock);
	/*
	 * Note that NAKs implicitly ACK outstanding SEND and RDMA write
	 * requests and implicitly NAK RDMA read and atomic requests issued
	 * before the NAK'ed request.  The MSN won't include the NAK'ed
	 * request but will include an ACK'ed request(s).
	 */
	ack_psn = psn;
	if (aeth >> IB_AETH_NAK_SHIFT)
		ack_psn--;
	wqe = FUNC17(qp, qp->s_acked);
	ibp = FUNC12(rcd);

	/*
	 * The MSN might be for a later WQE than the PSN indicates so
	 * only complete WQEs that the PSN finishes.
	 */
	while ((diff = FUNC3(ack_psn, wqe->lpsn)) >= 0) {
		/*
		 * RDMA_READ_RESPONSE_ONLY is a special case since
		 * we want to generate completion events for everything
		 * before the RDMA read, copy the data, then generate
		 * the completion for the read.
		 */
		if (wqe->wr.opcode == IB_WR_RDMA_READ &&
		    opcode == FUNC0(RDMA_READ_RESPONSE_ONLY) &&
		    diff == 0) {
			ret = 1;
			goto bail_stop;
		}
		/*
		 * If this request is a RDMA read or atomic, and the ACK is
		 * for a later operation, this ACK NAKs the RDMA read or
		 * atomic.  In other words, only a RDMA_READ_LAST or ONLY
		 * can ACK a RDMA read and likewise for atomic ops.  Note
		 * that the NAK case can only happen if relaxed ordering is
		 * used and requests are sent after an RDMA read or atomic
		 * is sent but before the response is received.
		 */
		if ((wqe->wr.opcode == IB_WR_RDMA_READ &&
		     (opcode != FUNC0(RDMA_READ_RESPONSE_LAST) || diff != 0)) ||
		    (wqe->wr.opcode == IB_WR_TID_RDMA_READ &&
		     (opcode != FUNC1(READ_RESP) || diff != 0)) ||
		    ((wqe->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
		      wqe->wr.opcode == IB_WR_ATOMIC_FETCH_AND_ADD) &&
		     (opcode != FUNC0(ATOMIC_ACKNOWLEDGE) || diff != 0)) ||
		    (wqe->wr.opcode == IB_WR_TID_RDMA_WRITE &&
		     (FUNC3(psn, qp->s_last_psn) != 1))) {
			FUNC21(qp, rcd);
			/*
			 * No need to process the ACK/NAK since we are
			 * restarting an earlier request.
			 */
			goto bail_stop;
		}
		if (wqe->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
		    wqe->wr.opcode == IB_WR_ATOMIC_FETCH_AND_ADD) {
			u64 *vaddr = wqe->sg_list[0].vaddr;
			*vaddr = val;
		}
		if (wqe->wr.opcode == IB_WR_OPFN)
			FUNC11(qp, val);

		if (qp->s_num_rd_atomic &&
		    (wqe->wr.opcode == IB_WR_RDMA_READ ||
		     wqe->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
		     wqe->wr.opcode == IB_WR_ATOMIC_FETCH_AND_ADD)) {
			qp->s_num_rd_atomic--;
			/* Restart sending task if fence is complete */
			if ((qp->s_flags & RVT_S_WAIT_FENCE) &&
			    !qp->s_num_rd_atomic) {
				qp->s_flags &= ~(RVT_S_WAIT_FENCE |
						 RVT_S_WAIT_ACK);
				FUNC7(qp);
			} else if (qp->s_flags & RVT_S_WAIT_RDMAR) {
				qp->s_flags &= ~(RVT_S_WAIT_RDMAR |
						 RVT_S_WAIT_ACK);
				FUNC7(qp);
			}
		}

		/*
		 * TID RDMA WRITE requests will be completed by the TID RDMA
		 * ACK packet handler (see tid_rdma.c).
		 */
		if (wqe->wr.opcode == IB_WR_TID_RDMA_WRITE)
			break;

		wqe = FUNC4(qp, wqe, ibp);
		if (qp->s_acked == qp->s_tail)
			break;
	}

	FUNC23(qp, aeth, psn, wqe);
	FUNC24(qp);
	switch (aeth >> IB_AETH_NAK_SHIFT) {
	case 0:         /* ACK */
		FUNC22(*ibp->rvp.rc_acks);
		if (wqe->wr.opcode == IB_WR_TID_RDMA_READ) {
			if (FUNC27(wqe)->ack_pending)
				FUNC19(qp,
							qpriv->timeout_shift);
			else
				FUNC20(qp);
		} else if (qp->s_acked != qp->s_tail) {
			struct rvt_swqe *__w = NULL;

			if (qpriv->s_tid_cur != HFI1_QP_WQE_INVALID)
				__w = FUNC17(qp, qpriv->s_tid_cur);

			/*
			 * Stop timers if we've received all of the TID RDMA
			 * WRITE * responses.
			 */
			if (__w && __w->wr.opcode == IB_WR_TID_RDMA_WRITE &&
			    opcode == FUNC1(WRITE_RESP)) {
				/*
				 * Normally, the loop above would correctly
				 * process all WQEs from s_acked onward and
				 * either complete them or check for correct
				 * PSN sequencing.
				 * However, for TID RDMA, due to pipelining,
				 * the response may not be for the request at
				 * s_acked so the above look would just be
				 * skipped. This does not allow for checking
				 * the PSN sequencing. It has to be done
				 * separately.
				 */
				if (FUNC2(psn, qp->s_last_psn + 1)) {
					FUNC21(qp, rcd);
					goto bail_stop;
				}
				/*
				 * If the psn is being resent, stop the
				 * resending.
				 */
				if (qp->s_cur != qp->s_tail &&
				    FUNC2(qp->s_psn, psn) <= 0)
					FUNC26(qp, psn,
							      __w->psn,
							      __w->lpsn);
				else if (--qpriv->pending_tid_w_resp)
					FUNC18(qp);
				else
					FUNC20(qp);
			} else {
				/*
				 * We are expecting more ACKs so
				 * mod the retry timer.
				 */
				FUNC18(qp);
				/*
				 * We can stop re-sending the earlier packets
				 * and continue with the next packet the
				 * receiver wants.
				 */
				if (FUNC2(qp->s_psn, psn) <= 0)
					FUNC13(qp, psn + 1);
			}
		} else {
			/* No more acks - kill all timers */
			FUNC20(qp);
			if (FUNC2(qp->s_psn, psn) <= 0) {
				qp->s_state = FUNC0(SEND_LAST);
				qp->s_psn = psn + 1;
			}
		}
		if (qp->s_flags & RVT_S_WAIT_ACK) {
			qp->s_flags &= ~RVT_S_WAIT_ACK;
			FUNC7(qp);
		}
		FUNC16(qp, aeth);
		qp->s_rnr_retry = qp->s_rnr_retry_cnt;
		qp->s_retry = qp->s_retry_cnt;
		/*
		 * If the current request is a TID RDMA WRITE request and the
		 * response is not a TID RDMA WRITE RESP packet, s_last_psn
		 * can't be advanced.
		 */
		if (wqe->wr.opcode == IB_WR_TID_RDMA_WRITE &&
		    opcode != FUNC1(WRITE_RESP) &&
		    FUNC2(psn, wqe->psn) >= 0)
			return 1;
		FUNC25(qp, psn);
		return 1;

	case 1:         /* RNR NAK */
		ibp->rvp.n_rnr_naks++;
		if (qp->s_acked == qp->s_tail)
			goto bail_stop;
		if (qp->s_flags & RVT_S_WAIT_RNR)
			goto bail_stop;
		rdi = FUNC9(qp->ibqp.device);
		if (qp->s_rnr_retry == 0 &&
		    !((rdi->post_parms[wqe->wr.opcode].flags &
		      RVT_OPERATION_IGN_RNR_CNT) &&
		      qp->s_rnr_retry_cnt == 0)) {
			status = IB_WC_RNR_RETRY_EXC_ERR;
			goto class_b;
		}
		if (qp->s_rnr_retry_cnt < 7 && qp->s_rnr_retry_cnt > 0)
			qp->s_rnr_retry--;

		/*
		 * The last valid PSN is the previous PSN. For TID RDMA WRITE
		 * request, s_last_psn should be incremented only when a TID
		 * RDMA WRITE RESP is received to avoid skipping lost TID RDMA
		 * WRITE RESP packets.
		 */
		if (wqe->wr.opcode == IB_WR_TID_RDMA_WRITE) {
			FUNC13(qp, qp->s_last_psn + 1);
		} else {
			FUNC25(qp, psn - 1);
			FUNC13(qp, psn);
		}

		ibp->rvp.n_rc_resends += FUNC3(qp->s_psn, psn);
		qp->s_flags &= ~(RVT_S_WAIT_SSN_CREDIT | RVT_S_WAIT_ACK);
		FUNC20(qp);
		FUNC14(qp, aeth);
		return 0;

	case 3:         /* NAK */
		if (qp->s_acked == qp->s_tail)
			goto bail_stop;
		/* The last valid PSN is the previous PSN. */
		FUNC25(qp, psn - 1);
		switch ((aeth >> IB_AETH_CREDIT_SHIFT) &
			IB_AETH_CREDIT_MASK) {
		case 0: /* PSN sequence error */
			ibp->rvp.n_seq_naks++;
			/*
			 * Back up to the responder's expected PSN.
			 * Note that we might get a NAK in the middle of an
			 * RDMA READ response which terminates the RDMA
			 * READ.
			 */
			FUNC6(qp, psn, 0);
			FUNC7(qp);
			break;

		case 1: /* Invalid Request */
			status = IB_WC_REM_INV_REQ_ERR;
			ibp->rvp.n_other_naks++;
			goto class_b;

		case 2: /* Remote Access Error */
			status = IB_WC_REM_ACCESS_ERR;
			ibp->rvp.n_other_naks++;
			goto class_b;

		case 3: /* Remote Operation Error */
			status = IB_WC_REM_OP_ERR;
			ibp->rvp.n_other_naks++;
class_b:
			if (qp->s_last == qp->s_acked) {
				if (wqe->wr.opcode == IB_WR_TID_RDMA_READ)
					FUNC5(qp);

				FUNC8(qp, wqe, status);
				FUNC15(qp, IB_WC_WR_FLUSH_ERR);
			}
			break;

		default:
			/* Ignore other reserved NAK error codes */
			goto reserved;
		}
		qp->s_retry = qp->s_retry_cnt;
		qp->s_rnr_retry = qp->s_rnr_retry_cnt;
		goto bail_stop;

	default:                /* 2: reserved */
reserved:
		/* Ignore reserved NAK codes. */
		goto bail_stop;
	}
	/* cannot be reached  */
bail_stop:
	FUNC20(qp);
	return ret;
}