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
typedef  union rdma_network_hdr {int dummy; } rdma_network_hdr ;
struct TYPE_2__ {int psn; int ack_psn; int /*<<< orphan*/  msn; int /*<<< orphan*/  status; int /*<<< orphan*/  opcode; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int mask; int psn; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 int BTH_PSN_MASK ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_SMI ; 
 scalar_t__ IB_QPT_UD ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int RESPST_ACKNOWLEDGE ; 
 int RESPST_CLEANUP ; 
 int RESPST_COMPLETE ; 
 int RESPST_READ_REPLY ; 
 int RXE_ATOMIC_MASK ; 
 int RXE_COMP_MASK ; 
 int RXE_READ_MASK ; 
 int RXE_SEND_MASK ; 
 int RXE_WRITE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (union rdma_network_hdr*,struct rxe_pkt_info*) ; 
 union rdma_network_hdr* FUNC2 (struct rxe_pkt_info*) ; 
 int FUNC3 (struct rxe_pkt_info*) ; 
 int FUNC4 (struct rxe_qp*,struct rxe_pkt_info*) ; 
 scalar_t__ FUNC5 (struct rxe_qp*) ; 
 int FUNC6 (struct rxe_qp*,union rdma_network_hdr*,int) ; 
 int FUNC7 (struct rxe_qp*,struct rxe_pkt_info*) ; 

__attribute__((used)) static enum resp_states FUNC8(struct rxe_qp *qp, struct rxe_pkt_info *pkt)
{
	enum resp_states err;

	if (pkt->mask & RXE_SEND_MASK) {
		if (FUNC5(qp) == IB_QPT_UD ||
		    FUNC5(qp) == IB_QPT_SMI ||
		    FUNC5(qp) == IB_QPT_GSI) {
			union rdma_network_hdr hdr;

			FUNC1(&hdr, pkt);

			err = FUNC6(qp, &hdr, sizeof(hdr));
			if (err)
				return err;
		}
		err = FUNC6(qp, FUNC2(pkt), FUNC3(pkt));
		if (err)
			return err;
	} else if (pkt->mask & RXE_WRITE_MASK) {
		err = FUNC7(qp, pkt);
		if (err)
			return err;
	} else if (pkt->mask & RXE_READ_MASK) {
		/* For RDMA Read we can increment the msn now. See C9-148. */
		qp->resp.msn++;
		return RESPST_READ_REPLY;
	} else if (pkt->mask & RXE_ATOMIC_MASK) {
		err = FUNC4(qp, pkt);
		if (err)
			return err;
	} else {
		/* Unreachable */
		FUNC0(1);
	}

	/* next expected psn, read handles this separately */
	qp->resp.psn = (pkt->psn + 1) & BTH_PSN_MASK;
	qp->resp.ack_psn = qp->resp.psn;

	qp->resp.opcode = pkt->opcode;
	qp->resp.status = IB_WC_SUCCESS;

	if (pkt->mask & RXE_COMP_MASK) {
		/* We successfully processed this new request. */
		qp->resp.msn++;
		return RESPST_COMPLETE;
	} else if (FUNC5(qp) == IB_QPT_RC)
		return RESPST_ACKNOWLEDGE;
	else
		return RESPST_CLEANUP;
}