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
typedef  uintptr_t u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i40iw_qp_uk {int swqe_polarity; } ;
struct i40iw_bind_window {int mr_stag; int mw_stag; uintptr_t bind_length; int enable_reads; int enable_writes; scalar_t__ addressing_type; scalar_t__ va; } ;
struct TYPE_2__ {struct i40iw_bind_window bind_window; } ;
struct i40iw_post_sq_info {int local_fence; int read_fence; int signaled; int /*<<< orphan*/  wr_id; TYPE_1__ op; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_LOCALFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_MWSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_PARENTMRSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_READFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_STAGRIGHTS ; 
 int /*<<< orphan*/  I40IWQPSQ_VABASEDTO ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 scalar_t__ I40IW_ADDR_TYPE_VA_BASED ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int I40IW_OP_TYPE_BIND_MW ; 
 int /*<<< orphan*/  I40IW_QP_WQE_MIN_SIZE ; 
 uintptr_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 uintptr_t* FUNC1 (struct i40iw_qp_uk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t*,int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC5(struct i40iw_qp_uk *qp,
					    struct i40iw_post_sq_info *info,
					    bool post_sq)
{
	u64 *wqe;
	struct i40iw_bind_window *op_info;
	u64 header;
	u32 wqe_idx;
	bool local_fence = false;

	op_info = &info->op.bind_window;

	local_fence |= info->local_fence;
	wqe = FUNC1(qp, &wqe_idx, I40IW_QP_WQE_MIN_SIZE, 0, info->wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
	FUNC3(wqe, 0, (uintptr_t)op_info->va);
	FUNC3(wqe, 8,
		      FUNC0(op_info->mr_stag, I40IWQPSQ_PARENTMRSTAG) |
		      FUNC0(op_info->mw_stag, I40IWQPSQ_MWSTAG));
	FUNC3(wqe, 16, op_info->bind_length);
	header = FUNC0(I40IW_OP_TYPE_BIND_MW, I40IWQPSQ_OPCODE) |
	    FUNC0(((op_info->enable_reads << 2) |
		   (op_info->enable_writes << 3)),
		  I40IWQPSQ_STAGRIGHTS) |
	    FUNC0((op_info->addressing_type == I40IW_ADDR_TYPE_VA_BASED ?  1 : 0),
		  I40IWQPSQ_VABASEDTO) |
	    FUNC0(info->read_fence, I40IWQPSQ_READFENCE) |
	    FUNC0(local_fence, I40IWQPSQ_LOCALFENCE) |
	    FUNC0(info->signaled, I40IWQPSQ_SIGCOMPL) |
	    FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	FUNC4(); /* make sure WQE is populated before valid bit is set */

	FUNC3(wqe, 24, header);

	if (post_sq)
		FUNC2(qp);

	return 0;
}