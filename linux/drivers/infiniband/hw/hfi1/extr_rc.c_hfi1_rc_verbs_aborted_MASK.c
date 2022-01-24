#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rvt_qp {int /*<<< orphan*/  s_flags; } ;
struct ib_other_headers {int /*<<< orphan*/ * bth; } ;
struct hfi1_opa_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACKNOWLEDGE ; 
 int IB_BTH_REQ_ACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_FIRST ; 
 int /*<<< orphan*/  READ_RESP ; 
 int /*<<< orphan*/  RVT_S_SEND_ONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_RESP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ib_other_headers* FUNC3 (struct hfi1_opa_header*) ; 
 scalar_t__ FUNC4 (struct ib_other_headers*) ; 
 int FUNC5 (struct ib_other_headers*) ; 

void FUNC6(struct rvt_qp *qp, struct hfi1_opa_header *opah)
{
	struct ib_other_headers *ohdr = FUNC3(opah);
	u8 opcode = FUNC4(ohdr);
	u32 psn;

	/* ignore responses */
	if ((opcode >= FUNC0(RDMA_READ_RESPONSE_FIRST) &&
	     opcode <= FUNC0(ATOMIC_ACKNOWLEDGE)) ||
	    opcode == FUNC1(READ_RESP) ||
	    opcode == FUNC1(WRITE_RESP))
		return;

	psn = FUNC5(ohdr) | IB_BTH_REQ_ACK;
	ohdr->bth[2] = FUNC2(psn);
	qp->s_flags |= RVT_S_SEND_ONE;
}