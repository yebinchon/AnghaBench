#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_14__ {int resid; } ;
struct TYPE_18__ {TYPE_10__* mr; int /*<<< orphan*/  key; int /*<<< orphan*/  access; } ;
struct TYPE_19__ {TYPE_5__ reg; } ;
struct TYPE_17__ {int invalidate_rkey; } ;
struct TYPE_20__ {int send_flags; int /*<<< orphan*/  opcode; TYPE_6__ wr; TYPE_4__ ex; } ;
struct rxe_send_wqe {int mask; scalar_t__ first_psn; scalar_t__ last_psn; void* state; void* status; TYPE_1__ dma; TYPE_7__ wr; } ;
struct TYPE_21__ {scalar_t__ psn; int /*<<< orphan*/  task; } ;
struct TYPE_22__ {scalar_t__ state; int opcode; int wait_psn; int need_retry; scalar_t__ psn; int /*<<< orphan*/  task; void* wqe_index; scalar_t__ need_rd_atomic; } ;
struct TYPE_15__ {int /*<<< orphan*/  queue; } ;
struct TYPE_16__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {scalar_t__ sq_sig_type; int need_req_skb; TYPE_8__ comp; TYPE_9__ req; TYPE_2__ sq; int /*<<< orphan*/  skb_out; int /*<<< orphan*/  iova; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/  access; int /*<<< orphan*/  state; TYPE_3__ ibqp; int /*<<< orphan*/  valid; } ;
struct rxe_pkt_info {int dummy; } ;
struct rxe_mem {scalar_t__ sq_sig_type; int need_req_skb; TYPE_8__ comp; TYPE_9__ req; TYPE_2__ sq; int /*<<< orphan*/  skb_out; int /*<<< orphan*/  iova; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/  access; int /*<<< orphan*/  state; TYPE_3__ ibqp; int /*<<< orphan*/  valid; } ;
struct rxe_dev {int /*<<< orphan*/  mr_pool; } ;
typedef  enum rxe_hdr_mask { ____Placeholder_rxe_hdr_mask } rxe_hdr_mask ;
struct TYPE_13__ {int mask; } ;
struct TYPE_12__ {int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int BTH_PSN_MASK ; 
 int EAGAIN ; 
 int IB_OPCODE_UD_SEND_ONLY ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UD ; 
 int IB_SEND_SIGNALED ; 
 scalar_t__ IB_SIGNAL_ALL_WR ; 
 void* IB_WC_LOC_PROT_ERR ; 
 void* IB_WC_LOC_QP_OP_ERR ; 
 void* IB_WC_MW_BIND_ERR ; 
 void* IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WR_LOCAL_INV ; 
 int /*<<< orphan*/  IB_WR_REG_MR ; 
 scalar_t__ QP_STATE_ERROR ; 
 scalar_t__ QP_STATE_RESET ; 
 scalar_t__ RXE_INFLIGHT_SKBS_PER_QP_HIGH ; 
 scalar_t__ RXE_MAX_UNACKED_PSNS ; 
 int /*<<< orphan*/  RXE_MEM_STATE_FREE ; 
 int /*<<< orphan*/  RXE_MEM_STATE_VALID ; 
 int RXE_READ_OR_ATOMIC ; 
 int RXE_WRITE_OR_SEND ; 
 int WR_REG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rxe_qp*,struct rxe_send_wqe*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rxe_qp*,struct rxe_send_wqe*,struct rxe_pkt_info*,struct sk_buff*,int) ; 
 int FUNC5 (struct rxe_qp*) ; 
 struct sk_buff* FUNC6 (struct rxe_qp*,struct rxe_send_wqe*,int,int,struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (struct rxe_qp*,struct rxe_send_wqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int FUNC12 (struct rxe_qp*) ; 
 scalar_t__ FUNC13 (struct rxe_qp*) ; 
 struct rxe_send_wqe* FUNC14 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC15 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC16 (struct rxe_send_wqe*,struct rxe_qp*,struct rxe_send_wqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC18 (struct rxe_qp*) ; 
 TYPE_11__* rxe_opcode ; 
 struct rxe_qp* FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (struct rxe_qp*,struct rxe_pkt_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct rxe_send_wqe*,struct rxe_qp*,struct rxe_send_wqe*,int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC23 (int /*<<< orphan*/ ) ; 
 struct rxe_qp* FUNC24 (TYPE_10__*) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct rxe_qp*,struct rxe_send_wqe*,struct rxe_pkt_info*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct rxe_qp*,struct rxe_send_wqe*,struct rxe_pkt_info*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct rxe_qp*,struct rxe_send_wqe*,struct rxe_pkt_info*) ; 
 void* wqe_state_done ; 
 void* wqe_state_error ; 

int FUNC29(void *arg)
{
	struct rxe_qp *qp = (struct rxe_qp *)arg;
	struct rxe_pkt_info pkt;
	struct sk_buff *skb;
	struct rxe_send_wqe *wqe;
	enum rxe_hdr_mask mask;
	int payload;
	int mtu;
	int opcode;
	int ret;
	struct rxe_send_wqe rollback_wqe;
	u32 rollback_psn;

	FUNC17(qp);

next_wqe:
	if (FUNC25(!qp->valid || qp->req.state == QP_STATE_ERROR))
		goto exit;

	if (FUNC25(qp->req.state == QP_STATE_RESET)) {
		qp->req.wqe_index = FUNC3(qp->sq.queue);
		qp->req.opcode = -1;
		qp->req.need_rd_atomic = 0;
		qp->req.wait_psn = 0;
		qp->req.need_retry = 0;
		goto exit;
	}

	if (FUNC25(qp->req.need_retry)) {
		FUNC15(qp);
		qp->req.need_retry = 0;
	}

	wqe = FUNC14(qp);
	if (FUNC25(!wqe))
		goto exit;

	if (wqe->mask & WR_REG_MASK) {
		if (wqe->wr.opcode == IB_WR_LOCAL_INV) {
			struct rxe_dev *rxe = FUNC23(qp->ibqp.device);
			struct rxe_mem *rmr;

			rmr = FUNC19(&rxe->mr_pool,
						 wqe->wr.ex.invalidate_rkey >> 8);
			if (!rmr) {
				FUNC11("No mr for key %#x\n",
				       wqe->wr.ex.invalidate_rkey);
				wqe->state = wqe_state_error;
				wqe->status = IB_WC_MW_BIND_ERR;
				goto exit;
			}
			rmr->state = RXE_MEM_STATE_FREE;
			FUNC18(rmr);
			wqe->state = wqe_state_done;
			wqe->status = IB_WC_SUCCESS;
		} else if (wqe->wr.opcode == IB_WR_REG_MR) {
			struct rxe_mem *rmr = FUNC24(wqe->wr.wr.reg.mr);

			rmr->state = RXE_MEM_STATE_VALID;
			rmr->access = wqe->wr.wr.reg.access;
			rmr->lkey = wqe->wr.wr.reg.key;
			rmr->rkey = wqe->wr.wr.reg.key;
			rmr->iova = wqe->wr.wr.reg.mr->iova;
			wqe->state = wqe_state_done;
			wqe->status = IB_WC_SUCCESS;
		} else {
			goto exit;
		}
		if ((wqe->wr.send_flags & IB_SEND_SIGNALED) ||
		    qp->sq_sig_type == IB_SIGNAL_ALL_WR)
			FUNC20(&qp->comp.task, 1);
		qp->req.wqe_index = FUNC8(qp->sq.queue,
						qp->req.wqe_index);
		goto next_wqe;
	}

	if (FUNC25(FUNC13(qp) == IB_QPT_RC &&
		     qp->req.psn > (qp->comp.psn + RXE_MAX_UNACKED_PSNS))) {
		qp->req.wait_psn = 1;
		goto exit;
	}

	/* Limit the number of inflight SKBs per QP */
	if (FUNC25(FUNC1(&qp->skb_out) >
		     RXE_INFLIGHT_SKBS_PER_QP_HIGH)) {
		qp->need_req_skb = 1;
		goto exit;
	}

	opcode = FUNC9(qp, wqe, wqe->wr.opcode);
	if (FUNC25(opcode < 0)) {
		wqe->status = IB_WC_LOC_QP_OP_ERR;
		goto exit;
	}

	mask = rxe_opcode[opcode].mask;
	if (FUNC25(mask & RXE_READ_OR_ATOMIC)) {
		if (FUNC2(qp, wqe))
			goto exit;
	}

	mtu = FUNC5(qp);
	payload = (mask & RXE_WRITE_OR_SEND) ? wqe->dma.resid : 0;
	if (payload > mtu) {
		if (FUNC13(qp) == IB_QPT_UD) {
			/* C10-93.1.1: If the total sum of all the buffer lengths specified for a
			 * UD message exceeds the MTU of the port as returned by QueryHCA, the CI
			 * shall not emit any packets for this message. Further, the CI shall not
			 * generate an error due to this condition.
			 */

			/* fake a successful UD send */
			wqe->first_psn = qp->req.psn;
			wqe->last_psn = qp->req.psn;
			qp->req.psn = (qp->req.psn + 1) & BTH_PSN_MASK;
			qp->req.opcode = IB_OPCODE_UD_SEND_ONLY;
			qp->req.wqe_index = FUNC8(qp->sq.queue,
						       qp->req.wqe_index);
			wqe->state = wqe_state_done;
			wqe->status = IB_WC_SUCCESS;
			FUNC0(&qp->comp.task);
			FUNC18(qp);
			return 0;
		}
		payload = mtu;
	}

	skb = FUNC6(qp, wqe, opcode, payload, &pkt);
	if (FUNC25(!skb)) {
		FUNC11("qp#%d Failed allocating skb\n", FUNC12(qp));
		goto err;
	}

	if (FUNC4(qp, wqe, &pkt, skb, payload)) {
		FUNC10("qp#%d Error during fill packet\n", FUNC12(qp));
		FUNC7(skb);
		goto err;
	}

	/*
	 * To prevent a race on wqe access between requester and completer,
	 * wqe members state and psn need to be set before calling
	 * rxe_xmit_packet().
	 * Otherwise, completer might initiate an unjustified retry flow.
	 */
	FUNC22(wqe, qp, &rollback_wqe, &rollback_psn);
	FUNC28(qp, wqe, &pkt);
	FUNC27(qp, wqe, &pkt, payload);
	ret = FUNC21(qp, &pkt, skb);
	if (ret) {
		qp->need_req_skb = 1;

		FUNC16(wqe, qp, &rollback_wqe, rollback_psn);

		if (ret == -EAGAIN) {
			FUNC20(&qp->req.task, 1);
			goto exit;
		}

		goto err;
	}

	FUNC26(qp, wqe, &pkt, payload);

	goto next_wqe;

err:
	wqe->status = IB_WC_LOC_PROT_ERR;
	wqe->state = wqe_state_error;
	FUNC0(&qp->comp.task);

exit:
	FUNC18(qp);
	return -EAGAIN;
}