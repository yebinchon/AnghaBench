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
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_get_tcb_rpl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct c4iw_ep {int rx_pdu_out_cnt; TYPE_1__ com; int /*<<< orphan*/  srqe_idx; int /*<<< orphan*/  hwtid; } ;
struct c4iw_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_REQ_IN_PROGRESS ; 
 unsigned int FUNC0 (struct cpl_get_tcb_rpl*) ; 
 int /*<<< orphan*/  PEER_ABORT_IN_PROGRESS ; 
 int /*<<< orphan*/  TCB_RQ_START_S ; 
 int /*<<< orphan*/  TCB_RQ_START_W ; 
 int /*<<< orphan*/  TCB_T_FLAGS_W ; 
 int TF_RX_PDU_OUT_S ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct cpl_get_tcb_rpl* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct c4iw_dev*,struct c4iw_ep*) ; 
 struct c4iw_ep* FUNC6 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct c4iw_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC9 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct cpl_get_tcb_rpl *rpl = FUNC4(skb);
	__be64 *tcb = (__be64 *)(rpl + 1);
	unsigned int tid = FUNC0(rpl);
	struct c4iw_ep *ep;
	u64 t_flags_64;
	u32 rx_pdu_out;

	ep = FUNC6(dev, tid);
	if (!ep)
		return 0;
	/* Examine the TF_RX_PDU_OUT (bit 49 of the t_flags) in order to
	 * determine if there's a rx PDU feedback event pending.
	 *
	 * If that bit is set, it means we'll need to re-read the TCB's
	 * rq_start value. The final value is the one present in a TCB
	 * with the TF_RX_PDU_OUT bit cleared.
	 */

	t_flags_64 = FUNC11(tcb, TCB_T_FLAGS_W);
	rx_pdu_out = (t_flags_64 & FUNC1(1)) >> TF_RX_PDU_OUT_S;

	FUNC3(&ep->com); /* from get_ep_from_tid() */
	FUNC3(&ep->com); /* from read_tcb() */

	/* If TF_RX_PDU_OUT bit is set, re-read the TCB */
	if (rx_pdu_out) {
		if (++ep->rx_pdu_out_cnt >= 2) {
			FUNC2(1, "tcb re-read() reached the guard limit, finishing the cleanup\n");
			goto cleanup;
		}
		FUNC8(ep);
		return 0;
	}

	ep->srqe_idx = FUNC10(tcb, TCB_RQ_START_W, TCB_RQ_START_W,
			TCB_RQ_START_S);
cleanup:
	FUNC7("ep %p tid %u %016x\n", ep, ep->hwtid, ep->srqe_idx);

	if (FUNC12(PEER_ABORT_IN_PROGRESS, &ep->com.flags))
		FUNC5(dev, ep);
	else if (FUNC12(ABORT_REQ_IN_PROGRESS, &ep->com.flags))
		FUNC9(ep);
	else
		FUNC2(1, "unexpected state!");

	return 0;
}