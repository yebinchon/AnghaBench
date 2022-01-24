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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_2__ {int rkey; int resid; struct rxe_mem* mr; int /*<<< orphan*/  va; scalar_t__ length; } ;
struct rxe_qp {int mtu; TYPE_1__ resp; int /*<<< orphan*/  pd; } ;
struct rxe_pkt_info {int mask; } ;
struct rxe_mem {scalar_t__ state; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int RESPST_ERR_LENGTH ; 
 int RESPST_ERR_RKEY_VIOLATION ; 
 int RESPST_EXECUTE ; 
 int RXE_ATOMIC_MASK ; 
 scalar_t__ RXE_MEM_STATE_FREE ; 
 int RXE_READ_MASK ; 
 int RXE_RETH_MASK ; 
 int RXE_WRITE_MASK ; 
 int RXE_WRITE_OR_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct rxe_mem*) ; 
 int FUNC1 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_pkt_info*) ; 
 int FUNC3 (struct rxe_pkt_info*) ; 
 struct rxe_mem* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lookup_remote ; 
 scalar_t__ FUNC5 (struct rxe_mem*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rxe_pkt_info*) ; 
 scalar_t__ FUNC7 (struct rxe_pkt_info*) ; 
 int FUNC8 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct rxe_mem*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static enum resp_states FUNC12(struct rxe_qp *qp,
				   struct rxe_pkt_info *pkt)
{
	struct rxe_mem *mem = NULL;
	u64 va;
	u32 rkey;
	u32 resid;
	u32 pktlen;
	int mtu = qp->mtu;
	enum resp_states state;
	int access;

	if (pkt->mask & (RXE_READ_MASK | RXE_WRITE_MASK)) {
		if (pkt->mask & RXE_RETH_MASK) {
			qp->resp.va = FUNC9(pkt);
			qp->resp.rkey = FUNC8(pkt);
			qp->resp.resid = FUNC7(pkt);
			qp->resp.length = FUNC7(pkt);
		}
		access = (pkt->mask & RXE_READ_MASK) ? IB_ACCESS_REMOTE_READ
						     : IB_ACCESS_REMOTE_WRITE;
	} else if (pkt->mask & RXE_ATOMIC_MASK) {
		qp->resp.va = FUNC2(pkt);
		qp->resp.rkey = FUNC1(pkt);
		qp->resp.resid = sizeof(u64);
		access = IB_ACCESS_REMOTE_ATOMIC;
	} else {
		return RESPST_EXECUTE;
	}

	/* A zero-byte op is not required to set an addr or rkey. */
	if ((pkt->mask & (RXE_READ_MASK | RXE_WRITE_OR_SEND)) &&
	    (pkt->mask & RXE_RETH_MASK) &&
	    FUNC7(pkt) == 0) {
		return RESPST_EXECUTE;
	}

	va	= qp->resp.va;
	rkey	= qp->resp.rkey;
	resid	= qp->resp.resid;
	pktlen	= FUNC6(pkt);

	mem = FUNC4(qp->pd, access, rkey, lookup_remote);
	if (!mem) {
		state = RESPST_ERR_RKEY_VIOLATION;
		goto err;
	}

	if (FUNC11(mem->state == RXE_MEM_STATE_FREE)) {
		state = RESPST_ERR_RKEY_VIOLATION;
		goto err;
	}

	if (FUNC5(mem, va, resid)) {
		state = RESPST_ERR_RKEY_VIOLATION;
		goto err;
	}

	if (pkt->mask & RXE_WRITE_MASK)	 {
		if (resid > mtu) {
			if (pktlen != mtu || FUNC3(pkt)) {
				state = RESPST_ERR_LENGTH;
				goto err;
			}
		} else {
			if (pktlen != resid) {
				state = RESPST_ERR_LENGTH;
				goto err;
			}
			if ((FUNC3(pkt) != (0x3 & (-resid)))) {
				/* This case may not be exactly that
				 * but nothing else fits.
				 */
				state = RESPST_ERR_LENGTH;
				goto err;
			}
		}
	}

	FUNC0(qp->resp.mr);

	qp->resp.mr = mem;
	return RESPST_EXECUTE;

err:
	if (mem)
		FUNC10(mem);
	return state;
}