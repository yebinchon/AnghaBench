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
struct rvt_qp {int /*<<< orphan*/  r_psn; int /*<<< orphan*/  r_ack_psn; scalar_t__ r_nak_state; } ;
struct hfi1_packet {int /*<<< orphan*/  ohdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_rc_seqnak; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_NAK_PSN_ERROR ; 
 scalar_t__ IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hfi1_ibport*,struct hfi1_packet*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*,struct rvt_qp*) ; 
 struct hfi1_ibport* FUNC5 (struct hfi1_ctxtdata*) ; 

void FUNC6(
	struct hfi1_ctxtdata *rcd,
	struct hfi1_packet *packet,
	struct rvt_qp *qp)
{
	struct hfi1_ibport *ibp = FUNC5(rcd);
	int diff;
	u32 opcode;
	u32 psn;

	if (FUNC1(ibp, packet))
		return;

	psn = FUNC3(packet->ohdr);
	opcode = FUNC2(packet->ohdr);

	/* Only deal with RDMA Writes for now */
	if (opcode < IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST) {
		diff = FUNC0(psn, qp->r_psn);
		if (!qp->r_nak_state && diff >= 0) {
			ibp->rvp.n_rc_seqnak++;
			qp->r_nak_state = IB_NAK_PSN_ERROR;
			/* Use the expected PSN. */
			qp->r_ack_psn = qp->r_psn;
			/*
			 * Wait to send the sequence
			 * NAK until all packets
			 * in the receive queue have
			 * been processed.
			 * Otherwise, we end up
			 * propagating congestion.
			 */
			FUNC4(rcd, qp);
		} /* Out of sequence NAK */
	} /* QP Request NAKs */
}