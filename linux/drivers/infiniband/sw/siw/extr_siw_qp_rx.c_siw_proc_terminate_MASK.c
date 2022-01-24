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
struct TYPE_6__ {int /*<<< orphan*/  mpa_len; } ;
union iwarp_hdr {TYPE_3__ ctrl; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  term_info ;
struct sk_buff {int dummy; } ;
struct iwarp_terminate {scalar_t__ flag_m; scalar_t__ flag_d; scalar_t__ flag_r; int /*<<< orphan*/  ddp_mo; int /*<<< orphan*/  ddp_msn; int /*<<< orphan*/  ddp_qn; } ;
struct TYPE_4__ {struct iwarp_terminate terminate; } ;
struct siw_rx_stream {scalar_t__* ddp_msn; int skb_new; int skb_offset; int skb_copied; int fpdu_part_rcvd; int fpdu_part_rem; TYPE_1__ hdr; struct sk_buff* skb; } ;
struct siw_qp {struct siw_rx_stream rx_stream; } ;
struct iwarp_ctrl_tagged {int dummy; } ;
struct iwarp_ctrl {int dummy; } ;
typedef  enum rdma_opcode { ____Placeholder_rdma_opcode } rdma_opcode ;
struct TYPE_5__ {int hdr_len; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int MPA_CRC_SIZE ; 
 int RDMAP_TERMINATE ; 
 size_t RDMAP_UNTAGGED_QN_TERMINATE ; 
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct iwarp_terminate*) ; 
 scalar_t__ FUNC2 (struct iwarp_terminate*) ; 
 scalar_t__ FUNC3 (struct iwarp_terminate*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* iwarp_pktinfo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct siw_qp*,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 

int FUNC10(struct siw_qp *qp)
{
	struct siw_rx_stream *srx = &qp->rx_stream;
	struct sk_buff *skb = srx->skb;
	struct iwarp_terminate *term = &srx->hdr.terminate;
	union iwarp_hdr term_info;
	u8 *infop = (u8 *)&term_info;
	enum rdma_opcode op;
	u16 to_copy = sizeof(struct iwarp_ctrl);

	FUNC7("siw: got TERMINATE. layer %d, type %d, code %d\n",
		FUNC3(term), FUNC2(term),
		FUNC1(term));

	if (FUNC5(term->ddp_qn) != RDMAP_UNTAGGED_QN_TERMINATE ||
	    FUNC5(term->ddp_msn) !=
		    qp->rx_stream.ddp_msn[RDMAP_UNTAGGED_QN_TERMINATE] ||
	    FUNC5(term->ddp_mo) != 0) {
		FUNC7("siw: rx bogus TERM [QN x%08x, MSN x%08x, MO x%08x]\n",
			FUNC5(term->ddp_qn), FUNC5(term->ddp_msn),
			FUNC5(term->ddp_mo));
		return -ECONNRESET;
	}
	/*
	 * Receive remaining pieces of TERM if indicated
	 */
	if (!term->flag_m)
		return -ECONNRESET;

	/* Do not take the effort to reassemble a network fragmented
	 * TERM message
	 */
	if (srx->skb_new < sizeof(struct iwarp_ctrl_tagged))
		return -ECONNRESET;

	FUNC6(infop, 0, sizeof(term_info));

	FUNC9(skb, srx->skb_offset, infop, to_copy);

	op = FUNC0(&term_info.ctrl);
	if (op >= RDMAP_TERMINATE)
		goto out;

	infop += to_copy;
	srx->skb_offset += to_copy;
	srx->skb_new -= to_copy;
	srx->skb_copied += to_copy;
	srx->fpdu_part_rcvd += to_copy;
	srx->fpdu_part_rem -= to_copy;

	to_copy = iwarp_pktinfo[op].hdr_len - to_copy;

	/* Again, no network fragmented TERM's */
	if (to_copy + MPA_CRC_SIZE > srx->skb_new)
		return -ECONNRESET;

	FUNC9(skb, srx->skb_offset, infop, to_copy);

	if (term->flag_r) {
		FUNC8(qp, "TERM reports RDMAP hdr type %u, len %u (%s)\n",
			   op, FUNC4(term_info.ctrl.mpa_len),
			   term->flag_m ? "valid" : "invalid");
	} else if (term->flag_d) {
		FUNC8(qp, "TERM reports DDP hdr type %u, len %u (%s)\n",
			   op, FUNC4(term_info.ctrl.mpa_len),
			   term->flag_m ? "valid" : "invalid");
	}
out:
	srx->skb_new -= to_copy;
	srx->skb_offset += to_copy;
	srx->skb_copied += to_copy;
	srx->fpdu_part_rcvd += to_copy;
	srx->fpdu_part_rem -= to_copy;

	return -ECONNRESET;
}