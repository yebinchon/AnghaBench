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
struct TYPE_6__ {int state; int drop_msg; int /*<<< orphan*/  goto_error; int /*<<< orphan*/ * wqe; void* status; int /*<<< orphan*/  psn; int /*<<< orphan*/  aeth_syndrome; } ;
struct TYPE_5__ {int min_rnr_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {TYPE_3__ resp; int /*<<< orphan*/  srq; TYPE_2__ attr; int /*<<< orphan*/  valid; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int /*<<< orphan*/  psn; } ;
struct rxe_dev {int dummy; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 int /*<<< orphan*/  AETH_ACK_UNLIMITED ; 
 int /*<<< orphan*/  AETH_NAK_INVALID_REQ ; 
 int AETH_NAK_PSN_SEQ_ERROR ; 
 int /*<<< orphan*/  AETH_NAK_REM_ACC_ERR ; 
 int /*<<< orphan*/  AETH_NAK_REM_OP_ERR ; 
 int AETH_RNR_NAK ; 
 int AETH_TYPE_MASK ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 void* IB_WC_LOC_QP_OP_ERR ; 
 void* IB_WC_REM_ACCESS_ERR ; 
 void* IB_WC_REM_INV_REQ_ERR ; 
#define  QP_STATE_RESET 157 
#define  RESPST_ACKNOWLEDGE 156 
#define  RESPST_CHK_LENGTH 155 
#define  RESPST_CHK_OP_SEQ 154 
#define  RESPST_CHK_OP_VALID 153 
#define  RESPST_CHK_PSN 152 
#define  RESPST_CHK_RESOURCE 151 
#define  RESPST_CHK_RKEY 150 
#define  RESPST_CLEANUP 149 
#define  RESPST_COMPLETE 148 
#define  RESPST_DONE 147 
#define  RESPST_DUPLICATE_REQUEST 146 
#define  RESPST_ERROR 145 
#define  RESPST_ERR_CQ_OVERFLOW 144 
#define  RESPST_ERR_LENGTH 143 
#define  RESPST_ERR_MALFORMED_WQE 142 
#define  RESPST_ERR_MISALIGNED_ATOMIC 141 
#define  RESPST_ERR_MISSING_OPCODE_FIRST 140 
#define  RESPST_ERR_MISSING_OPCODE_LAST_C 139 
#define  RESPST_ERR_MISSING_OPCODE_LAST_D1E 138 
#define  RESPST_ERR_PSN_OUT_OF_SEQ 137 
#define  RESPST_ERR_RKEY_VIOLATION 136 
#define  RESPST_ERR_RNR 135 
#define  RESPST_ERR_TOO_MANY_RDMA_ATM_REQ 134 
#define  RESPST_ERR_UNSUPPORTED_OPCODE 133 
#define  RESPST_EXECUTE 132 
#define  RESPST_EXIT 131 
#define  RESPST_GET_REQ 130 
#define  RESPST_READ_REPLY 129 
#define  RESPST_RESET 128 
 int /*<<< orphan*/  RXE_CNT_SND_RNR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC2 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC3 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC4 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC5 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC6 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC7 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC8 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxe_qp*,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (struct rxe_qp*) ; 
 int FUNC11 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC12 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC13 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int FUNC14 (struct rxe_qp*,struct rxe_pkt_info**) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC18 (struct rxe_qp*) ; 
 int FUNC19 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 int /*<<< orphan*/ * resp_state_name ; 
 int /*<<< orphan*/  FUNC20 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC21 (struct rxe_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct rxe_qp*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC24 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC25 (struct rxe_qp*,struct rxe_pkt_info*,int,int /*<<< orphan*/ ) ; 
 struct rxe_dev* FUNC26 (int /*<<< orphan*/ ) ; 

int FUNC27(void *arg)
{
	struct rxe_qp *qp = (struct rxe_qp *)arg;
	struct rxe_dev *rxe = FUNC26(qp->ibqp.device);
	enum resp_states state;
	struct rxe_pkt_info *pkt = NULL;
	int ret = 0;

	FUNC20(qp);

	qp->resp.aeth_syndrome = AETH_ACK_UNLIMITED;

	if (!qp->valid) {
		ret = -EINVAL;
		goto done;
	}

	switch (qp->resp.state) {
	case QP_STATE_RESET:
		state = RESPST_RESET;
		break;

	default:
		state = RESPST_GET_REQ;
		break;
	}

	while (1) {
		FUNC15("qp#%d state = %s\n", FUNC17(qp),
			 resp_state_name[state]);
		switch (state) {
		case RESPST_GET_REQ:
			state = FUNC14(qp, &pkt);
			break;
		case RESPST_CHK_PSN:
			state = FUNC5(qp, pkt);
			break;
		case RESPST_CHK_OP_SEQ:
			state = FUNC3(qp, pkt);
			break;
		case RESPST_CHK_OP_VALID:
			state = FUNC4(qp, pkt);
			break;
		case RESPST_CHK_RESOURCE:
			state = FUNC6(qp, pkt);
			break;
		case RESPST_CHK_LENGTH:
			state = FUNC2(qp, pkt);
			break;
		case RESPST_CHK_RKEY:
			state = FUNC7(qp, pkt);
			break;
		case RESPST_EXECUTE:
			state = FUNC13(qp, pkt);
			break;
		case RESPST_COMPLETE:
			state = FUNC11(qp, pkt);
			break;
		case RESPST_READ_REPLY:
			state = FUNC19(qp, pkt);
			break;
		case RESPST_ACKNOWLEDGE:
			state = FUNC1(qp, pkt);
			break;
		case RESPST_CLEANUP:
			state = FUNC8(qp, pkt);
			break;
		case RESPST_DUPLICATE_REQUEST:
			state = FUNC12(qp, pkt);
			break;
		case RESPST_ERR_PSN_OUT_OF_SEQ:
			/* RC only - Class B. Drop packet. */
			FUNC25(qp, pkt, AETH_NAK_PSN_SEQ_ERROR, qp->resp.psn);
			state = RESPST_CLEANUP;
			break;

		case RESPST_ERR_TOO_MANY_RDMA_ATM_REQ:
		case RESPST_ERR_MISSING_OPCODE_FIRST:
		case RESPST_ERR_MISSING_OPCODE_LAST_C:
		case RESPST_ERR_UNSUPPORTED_OPCODE:
		case RESPST_ERR_MISALIGNED_ATOMIC:
			/* RC Only - Class C. */
			FUNC9(qp, AETH_NAK_INVALID_REQ,
					  IB_WC_REM_INV_REQ_ERR);
			state = RESPST_COMPLETE;
			break;

		case RESPST_ERR_MISSING_OPCODE_LAST_D1E:
			state = FUNC10(qp);
			break;
		case RESPST_ERR_RNR:
			if (FUNC18(qp) == IB_QPT_RC) {
				FUNC21(rxe, RXE_CNT_SND_RNR);
				/* RC - class B */
				FUNC25(qp, pkt, AETH_RNR_NAK |
					 (~AETH_TYPE_MASK &
					 qp->attr.min_rnr_timer),
					 pkt->psn);
			} else {
				/* UD/UC - class D */
				qp->resp.drop_msg = 1;
			}
			state = RESPST_CLEANUP;
			break;

		case RESPST_ERR_RKEY_VIOLATION:
			if (FUNC18(qp) == IB_QPT_RC) {
				/* Class C */
				FUNC9(qp, AETH_NAK_REM_ACC_ERR,
						  IB_WC_REM_ACCESS_ERR);
				state = RESPST_COMPLETE;
			} else {
				qp->resp.drop_msg = 1;
				if (qp->srq) {
					/* UC/SRQ Class D */
					qp->resp.status = IB_WC_REM_ACCESS_ERR;
					state = RESPST_COMPLETE;
				} else {
					/* UC/non-SRQ Class E. */
					state = RESPST_CLEANUP;
				}
			}
			break;

		case RESPST_ERR_LENGTH:
			if (FUNC18(qp) == IB_QPT_RC) {
				/* Class C */
				FUNC9(qp, AETH_NAK_INVALID_REQ,
						  IB_WC_REM_INV_REQ_ERR);
				state = RESPST_COMPLETE;
			} else if (qp->srq) {
				/* UC/UD - class E */
				qp->resp.status = IB_WC_REM_INV_REQ_ERR;
				state = RESPST_COMPLETE;
			} else {
				/* UC/UD - class D */
				qp->resp.drop_msg = 1;
				state = RESPST_CLEANUP;
			}
			break;

		case RESPST_ERR_MALFORMED_WQE:
			/* All, Class A. */
			FUNC9(qp, AETH_NAK_REM_OP_ERR,
					  IB_WC_LOC_QP_OP_ERR);
			state = RESPST_COMPLETE;
			break;

		case RESPST_ERR_CQ_OVERFLOW:
			/* All - Class G */
			state = RESPST_ERROR;
			break;

		case RESPST_DONE:
			if (qp->resp.goto_error) {
				state = RESPST_ERROR;
				break;
			}

			goto done;

		case RESPST_EXIT:
			if (qp->resp.goto_error) {
				state = RESPST_ERROR;
				break;
			}

			goto exit;

		case RESPST_RESET:
			FUNC22(qp, false);
			qp->resp.wqe = NULL;
			goto exit;

		case RESPST_ERROR:
			qp->resp.goto_error = 0;
			FUNC16("qp#%d moved to error state\n", FUNC17(qp));
			FUNC24(qp);
			goto exit;

		default:
			FUNC0(1);
		}
	}

exit:
	ret = -EAGAIN;
done:
	FUNC23(qp);
	return ret;
}