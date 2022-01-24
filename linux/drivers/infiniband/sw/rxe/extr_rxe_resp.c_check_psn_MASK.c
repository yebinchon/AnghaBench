#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int sent_psn_nak; int drop_msg; int /*<<< orphan*/  psn; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {TYPE_2__ resp; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; int /*<<< orphan*/  psn; } ;
struct rxe_dev {int dummy; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
#define  IB_QPT_RC 129 
#define  IB_QPT_UC 128 
 int RESPST_CHK_OP_SEQ ; 
 int RESPST_CLEANUP ; 
 int RESPST_DUPLICATE_REQUEST ; 
 int RESPST_ERR_PSN_OUT_OF_SEQ ; 
 int /*<<< orphan*/  RXE_CNT_DUP_REQ ; 
 int /*<<< orphan*/  RXE_CNT_OUT_OF_SEQ_REQ ; 
 int RXE_START_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_dev*,int /*<<< orphan*/ ) ; 
 struct rxe_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum resp_states FUNC4(struct rxe_qp *qp,
				  struct rxe_pkt_info *pkt)
{
	int diff = FUNC0(pkt->psn, qp->resp.psn);
	struct rxe_dev *rxe = FUNC3(qp->ibqp.device);

	switch (FUNC1(qp)) {
	case IB_QPT_RC:
		if (diff > 0) {
			if (qp->resp.sent_psn_nak)
				return RESPST_CLEANUP;

			qp->resp.sent_psn_nak = 1;
			FUNC2(rxe, RXE_CNT_OUT_OF_SEQ_REQ);
			return RESPST_ERR_PSN_OUT_OF_SEQ;

		} else if (diff < 0) {
			FUNC2(rxe, RXE_CNT_DUP_REQ);
			return RESPST_DUPLICATE_REQUEST;
		}

		if (qp->resp.sent_psn_nak)
			qp->resp.sent_psn_nak = 0;

		break;

	case IB_QPT_UC:
		if (qp->resp.drop_msg || diff != 0) {
			if (pkt->mask & RXE_START_MASK) {
				qp->resp.drop_msg = 0;
				return RESPST_CHK_OP_SEQ;
			}

			qp->resp.drop_msg = 1;
			return RESPST_CLEANUP;
		}
		break;
	default:
		break;
	}

	return RESPST_CHK_OP_SEQ;
}