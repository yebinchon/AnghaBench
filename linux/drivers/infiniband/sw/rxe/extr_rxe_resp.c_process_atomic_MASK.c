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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ atomic_orig; struct rxe_mem* mr; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {scalar_t__ opcode; } ;
struct rxe_mem {scalar_t__ state; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 scalar_t__ IB_OPCODE_RC_COMPARE_SWAP ; 
 scalar_t__ IB_OPCODE_RD_COMPARE_SWAP ; 
 int RESPST_ERR_MISALIGNED_ATOMIC ; 
 int RESPST_ERR_RKEY_VIOLATION ; 
 int RESPST_NONE ; 
 scalar_t__ RXE_MEM_STATE_VALID ; 
 scalar_t__ FUNC0 (struct rxe_pkt_info*) ; 
 scalar_t__ FUNC1 (struct rxe_pkt_info*) ; 
 scalar_t__ FUNC2 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  atomic_ops_lock ; 
 scalar_t__* FUNC3 (struct rxe_mem*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum resp_states FUNC6(struct rxe_qp *qp,
				       struct rxe_pkt_info *pkt)
{
	u64 iova = FUNC2(pkt);
	u64 *vaddr;
	enum resp_states ret;
	struct rxe_mem *mr = qp->resp.mr;

	if (mr->state != RXE_MEM_STATE_VALID) {
		ret = RESPST_ERR_RKEY_VIOLATION;
		goto out;
	}

	vaddr = FUNC3(mr, iova, sizeof(u64));

	/* check vaddr is 8 bytes aligned. */
	if (!vaddr || (uintptr_t)vaddr & 7) {
		ret = RESPST_ERR_MISALIGNED_ATOMIC;
		goto out;
	}

	FUNC4(&atomic_ops_lock);

	qp->resp.atomic_orig = *vaddr;

	if (pkt->opcode == IB_OPCODE_RC_COMPARE_SWAP ||
	    pkt->opcode == IB_OPCODE_RD_COMPARE_SWAP) {
		if (*vaddr == FUNC0(pkt))
			*vaddr = FUNC1(pkt);
	} else {
		*vaddr += FUNC1(pkt);
	}

	FUNC5(&atomic_ops_lock);

	ret = RESPST_NONE;
out:
	return ret;
}