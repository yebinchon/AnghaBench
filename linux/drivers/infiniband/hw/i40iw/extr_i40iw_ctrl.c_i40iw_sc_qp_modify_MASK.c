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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct TYPE_6__ {int qp_id; } ;
struct i40iw_sc_qp {int hw_host_ctx_pa; int shadow_area_pa; scalar_t__ virtual_map; scalar_t__ qp_type; TYPE_3__ qp_uk; TYPE_2__* pd; } ;
struct i40iw_sc_cqp {scalar_t__ polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_modify_qp_info {scalar_t__ next_iwarp_state; scalar_t__ termlen; scalar_t__ ord_valid; scalar_t__ tcp_ctx_valid; scalar_t__ cached_var_valid; scalar_t__ cq_num_valid; scalar_t__ force_loopback; scalar_t__ remove_hash_idx; scalar_t__ reset_tcp_conn; scalar_t__ arp_cache_idx_valid; scalar_t__ dont_send_term; scalar_t__ dont_send_fin; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 scalar_t__ I40IWQP_TERM_SEND_FIN_ONLY ; 
 scalar_t__ I40IWQP_TERM_SEND_TERM_AND_FIN ; 
 scalar_t__ I40IWQP_TERM_SEND_TERM_ONLY ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_ARPTABIDXVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_CACHEDVARVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_CQNUMVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_FORCELOOPBACK ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_NEXTIWSTATE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_ORDVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_QPTYPE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_REMOVEHASHENTRY ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_RESETCON ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_TERMACT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_TERMLEN ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_TOECTXVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_VQ ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 scalar_t__ I40IW_CQP_OP_MODIFY_QP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 scalar_t__ I40IW_QP_STATE_TERMINATE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
				struct i40iw_sc_qp *qp,
				struct i40iw_modify_qp_info *info,
				u64 scratch,
				bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 header;
	u8 term_actions = 0;
	u8 term_len = 0;

	cqp = qp->pd->dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	if (info->next_iwarp_state == I40IW_QP_STATE_TERMINATE) {
		if (info->dont_send_fin)
			term_actions += I40IWQP_TERM_SEND_TERM_ONLY;
		if (info->dont_send_term)
			term_actions += I40IWQP_TERM_SEND_FIN_ONLY;
		if ((term_actions == I40IWQP_TERM_SEND_TERM_AND_FIN) ||
		    (term_actions == I40IWQP_TERM_SEND_TERM_ONLY))
			term_len = info->termlen;
	}

	FUNC5(wqe,
		      8,
		      FUNC0(term_len, I40IW_CQPSQ_QP_TERMLEN));

	FUNC5(wqe, 16, qp->hw_host_ctx_pa);
	FUNC5(wqe, 40, qp->shadow_area_pa);

	header = qp->qp_uk.qp_id |
		 FUNC0(I40IW_CQP_OP_MODIFY_QP, I40IW_CQPSQ_OPCODE) |
		 FUNC0(info->ord_valid, I40IW_CQPSQ_QP_ORDVALID) |
		 FUNC0(info->tcp_ctx_valid, I40IW_CQPSQ_QP_TOECTXVALID) |
		 FUNC0(info->cached_var_valid, I40IW_CQPSQ_QP_CACHEDVARVALID) |
		 FUNC0(qp->virtual_map, I40IW_CQPSQ_QP_VQ) |
		 FUNC0(info->cq_num_valid, I40IW_CQPSQ_QP_CQNUMVALID) |
		 FUNC0(info->force_loopback, I40IW_CQPSQ_QP_FORCELOOPBACK) |
		 FUNC0(qp->qp_type, I40IW_CQPSQ_QP_QPTYPE) |
		 FUNC0(info->remove_hash_idx, I40IW_CQPSQ_QP_REMOVEHASHENTRY) |
		 FUNC0(term_actions, I40IW_CQPSQ_QP_TERMACT) |
		 FUNC0(info->reset_tcp_conn, I40IW_CQPSQ_QP_RESETCON) |
		 FUNC0(info->arp_cache_idx_valid, I40IW_CQPSQ_QP_ARPTABIDXVALID) |
		 FUNC0(info->next_iwarp_state, I40IW_CQPSQ_QP_NEXTIWSTATE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "QP_MODIFY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}