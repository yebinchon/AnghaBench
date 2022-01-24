#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx5_wqe_ctrl_seg {int fm_ce_se; int /*<<< orphan*/  signature; void* qpn_ds; void* opmod_idx_opcode; } ;
struct TYPE_10__ {int cur_post; int wqe_cnt; void* cur_edge; TYPE_4__* w_list; scalar_t__ head; scalar_t__* wqe_head; int /*<<< orphan*/ * wrid; } ;
struct TYPE_6__ {int qpn; } ;
struct TYPE_7__ {TYPE_1__ mqp; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct mlx5_ib_qp {int wq_sig; TYPE_5__ sq; TYPE_3__ trans_qp; } ;
struct TYPE_9__ {int opcode; int next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_wqe_ctrl_seg*) ; 

__attribute__((used)) static void FUNC6(struct mlx5_ib_qp *qp,
		       struct mlx5_wqe_ctrl_seg *ctrl,
		       void *seg, u8 size, void *cur_edge,
		       unsigned int idx, u64 wr_id, int nreq, u8 fence,
		       u32 mlx5_opcode)
{
	u8 opmod = 0;

	ctrl->opmod_idx_opcode = FUNC2(((u32)(qp->sq.cur_post) << 8) |
					     mlx5_opcode | ((u32)opmod << 24));
	ctrl->qpn_ds = FUNC2(size | (qp->trans_qp.base.mqp.qpn << 8));
	ctrl->fm_ce_se |= fence;
	if (FUNC4(qp->wq_sig))
		ctrl->signature = FUNC5(ctrl);

	qp->sq.wrid[idx] = wr_id;
	qp->sq.w_list[idx].opcode = mlx5_opcode;
	qp->sq.wqe_head[idx] = qp->sq.head + nreq;
	qp->sq.cur_post += FUNC0(size * 16, MLX5_SEND_WQE_BB);
	qp->sq.w_list[idx].next = qp->sq.cur_post;

	/* We save the edge which was possibly updated during the WQE
	 * construction, into SQ's cache.
	 */
	seg = FUNC1(seg, MLX5_SEND_WQE_BB);
	qp->sq.cur_edge = (FUNC4(seg == cur_edge)) ?
			  FUNC3(&qp->sq, qp->sq.cur_post &
				      (qp->sq.wqe_cnt - 1)) :
			  cur_edge;
}