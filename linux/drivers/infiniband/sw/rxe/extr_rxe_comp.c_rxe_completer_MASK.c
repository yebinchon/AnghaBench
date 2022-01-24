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
struct sk_buff {int dummy; } ;
struct rxe_send_wqe {int /*<<< orphan*/  status; int /*<<< orphan*/  state; int /*<<< orphan*/  last_psn; } ;
struct TYPE_5__ {scalar_t__ state; int need_retry; int /*<<< orphan*/  task; int /*<<< orphan*/  psn; int /*<<< orphan*/  wait_psn; } ;
struct TYPE_6__ {int timeout_retry; int opcode; int psn; int started_retry; int retry_cnt; int rnr_retry; scalar_t__ timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {int /*<<< orphan*/  rnr_nak_timer; TYPE_2__ req; TYPE_3__ comp; scalar_t__ qp_timeout_jiffies; int /*<<< orphan*/  retrans_timer; int /*<<< orphan*/  resp_pkts; scalar_t__ valid; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; int opcode; struct rxe_qp* qp; int /*<<< orphan*/  psn; } ;
struct rxe_dev {int dummy; } ;
typedef  enum comp_state { ____Placeholder_comp_state } comp_state ;

/* Variables and functions */
 int AETH_TYPE_MASK ; 
 int BTH_PSN_MASK ; 
#define  COMPST_ATOMIC 142 
#define  COMPST_CHECK_ACK 141 
#define  COMPST_CHECK_PSN 140 
#define  COMPST_COMP_ACK 139 
#define  COMPST_COMP_WQE 138 
#define  COMPST_DONE 137 
#define  COMPST_ERROR 136 
#define  COMPST_ERROR_RETRY 135 
#define  COMPST_EXIT 134 
#define  COMPST_GET_ACK 133 
#define  COMPST_GET_WQE 132 
#define  COMPST_READ 131 
#define  COMPST_RNR_RETRY 130 
#define  COMPST_UPDATE_COMP 129 
#define  COMPST_WRITE_SEND 128 
 int EAGAIN ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_WC_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_RNR_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 scalar_t__ QP_STATE_ERROR ; 
 scalar_t__ QP_STATE_READY ; 
 scalar_t__ QP_STATE_RESET ; 
 int /*<<< orphan*/  RXE_CNT_COMP_RETRY ; 
 int /*<<< orphan*/  RXE_CNT_RETRY_EXCEEDED ; 
 int /*<<< orphan*/  RXE_CNT_RNR_RETRY_EXCEEDED ; 
 int RXE_END_MASK ; 
 struct rxe_pkt_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rxe_pkt_info*) ; 
 int FUNC3 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int FUNC4 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int /*<<< orphan*/ * comp_state_name ; 
 int FUNC5 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int FUNC6 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int FUNC7 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int /*<<< orphan*/  FUNC8 (struct rxe_qp*,struct rxe_send_wqe*) ; 
 int FUNC9 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ; 
 int FUNC10 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe**) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC16 (struct rxe_qp*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC19 (struct rxe_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rxe_qp*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC22 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC24 (int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wqe_state_pending ; 
 int /*<<< orphan*/  wqe_state_posted ; 

int FUNC26(void *arg)
{
	struct rxe_qp *qp = (struct rxe_qp *)arg;
	struct rxe_dev *rxe = FUNC25(qp->ibqp.device);
	struct rxe_send_wqe *wqe = NULL;
	struct sk_buff *skb = NULL;
	struct rxe_pkt_info *pkt = NULL;
	enum comp_state state;

	FUNC18(qp);

	if (!qp->valid || qp->req.state == QP_STATE_ERROR ||
	    qp->req.state == QP_STATE_RESET) {
		FUNC20(qp, qp->valid &&
				    qp->req.state == QP_STATE_ERROR);
		goto exit;
	}

	if (qp->comp.timeout) {
		qp->comp.timeout_retry = 1;
		qp->comp.timeout = 0;
	} else {
		qp->comp.timeout_retry = 0;
	}

	if (qp->req.need_retry)
		goto exit;

	state = COMPST_GET_ACK;

	while (1) {
		FUNC13("qp#%d state = %s\n", FUNC15(qp),
			 comp_state_name[state]);
		switch (state) {
		case COMPST_GET_ACK:
			skb = FUNC24(&qp->resp_pkts);
			if (skb) {
				pkt = FUNC0(skb);
				qp->comp.timeout_retry = 0;
			}
			state = COMPST_GET_WQE;
			break;

		case COMPST_GET_WQE:
			state = FUNC10(qp, pkt, &wqe);
			break;

		case COMPST_CHECK_PSN:
			state = FUNC4(qp, pkt, wqe);
			break;

		case COMPST_CHECK_ACK:
			state = FUNC3(qp, pkt, wqe);
			break;

		case COMPST_READ:
			state = FUNC9(qp, pkt, wqe);
			break;

		case COMPST_ATOMIC:
			state = FUNC7(qp, pkt, wqe);
			break;

		case COMPST_WRITE_SEND:
			if (wqe->state == wqe_state_pending &&
			    wqe->last_psn == pkt->psn)
				state = COMPST_COMP_ACK;
			else
				state = COMPST_UPDATE_COMP;
			break;

		case COMPST_COMP_ACK:
			state = FUNC5(qp, pkt, wqe);
			break;

		case COMPST_COMP_WQE:
			state = FUNC6(qp, pkt, wqe);
			break;

		case COMPST_UPDATE_COMP:
			if (pkt->mask & RXE_END_MASK)
				qp->comp.opcode = -1;
			else
				qp->comp.opcode = pkt->opcode;

			if (FUNC14(pkt->psn, qp->comp.psn) >= 0)
				qp->comp.psn = (pkt->psn + 1) & BTH_PSN_MASK;

			if (qp->req.wait_psn) {
				qp->req.wait_psn = 0;
				FUNC23(&qp->req.task, 1);
			}

			state = COMPST_DONE;
			break;

		case COMPST_DONE:
			if (pkt) {
				FUNC21(pkt->qp);
				FUNC11(skb);
				skb = NULL;
			}
			goto done;

		case COMPST_EXIT:
			if (qp->comp.timeout_retry && wqe) {
				state = COMPST_ERROR_RETRY;
				break;
			}

			/* re reset the timeout counter if
			 * (1) QP is type RC
			 * (2) the QP is alive
			 * (3) there is a packet sent by the requester that
			 *     might be acked (we still might get spurious
			 *     timeouts but try to keep them as few as possible)
			 * (4) the timeout parameter is set
			 */
			if ((FUNC16(qp) == IB_QPT_RC) &&
			    (qp->req.state == QP_STATE_READY) &&
			    (FUNC14(qp->req.psn, qp->comp.psn) > 0) &&
			    qp->qp_timeout_jiffies)
				FUNC12(&qp->retrans_timer,
					  jiffies + qp->qp_timeout_jiffies);
			goto exit;

		case COMPST_ERROR_RETRY:
			/* we come here if the retry timer fired and we did
			 * not receive a response packet. try to retry the send
			 * queue if that makes sense and the limits have not
			 * been exceeded. remember that some timeouts are
			 * spurious since we do not reset the timer but kick
			 * it down the road or let it expire
			 */

			/* there is nothing to retry in this case */
			if (!wqe || (wqe->state == wqe_state_posted)) {
				goto exit;
			}

			/* if we've started a retry, don't start another
			 * retry sequence, unless this is a timeout.
			 */
			if (qp->comp.started_retry &&
			    !qp->comp.timeout_retry) {
				if (pkt) {
					FUNC21(pkt->qp);
					FUNC11(skb);
					skb = NULL;
				}

				goto done;
			}

			if (qp->comp.retry_cnt > 0) {
				if (qp->comp.retry_cnt != 7)
					qp->comp.retry_cnt--;

				/* no point in retrying if we have already
				 * seen the last ack that the requester could
				 * have caused
				 */
				if (FUNC14(qp->req.psn,
						qp->comp.psn) > 0) {
					/* tell the requester to retry the
					 * send queue next time around
					 */
					FUNC19(rxe,
							RXE_CNT_COMP_RETRY);
					qp->req.need_retry = 1;
					qp->comp.started_retry = 1;
					FUNC23(&qp->req.task, 1);
				}

				if (pkt) {
					FUNC21(pkt->qp);
					FUNC11(skb);
					skb = NULL;
				}

				goto done;

			} else {
				FUNC19(rxe, RXE_CNT_RETRY_EXCEEDED);
				wqe->status = IB_WC_RETRY_EXC_ERR;
				state = COMPST_ERROR;
			}
			break;

		case COMPST_RNR_RETRY:
			if (qp->comp.rnr_retry > 0) {
				if (qp->comp.rnr_retry != 7)
					qp->comp.rnr_retry--;

				qp->req.need_retry = 1;
				FUNC13("qp#%d set rnr nak timer\n",
					 FUNC15(qp));
				FUNC12(&qp->rnr_nak_timer,
					  jiffies + FUNC17(FUNC2(pkt)
						& ~AETH_TYPE_MASK));
				FUNC21(pkt->qp);
				FUNC11(skb);
				skb = NULL;
				goto exit;
			} else {
				FUNC19(rxe,
						RXE_CNT_RNR_RETRY_EXCEEDED);
				wqe->status = IB_WC_RNR_RETRY_EXC_ERR;
				state = COMPST_ERROR;
			}
			break;

		case COMPST_ERROR:
			FUNC1(wqe->status == IB_WC_SUCCESS);
			FUNC8(qp, wqe);
			FUNC22(qp);

			if (pkt) {
				FUNC21(pkt->qp);
				FUNC11(skb);
				skb = NULL;
			}

			goto exit;
		}
	}

exit:
	/* we come here if we are done with processing and want the task to
	 * exit from the loop calling us
	 */
	FUNC1(skb);
	FUNC21(qp);
	return -EAGAIN;

done:
	/* we come here if we have processed a packet we want the task to call
	 * us again to see if there is anything else to do
	 */
	FUNC1(skb);
	FUNC21(qp);
	return 0;
}