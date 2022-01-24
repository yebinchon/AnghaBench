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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int tag_off; int stag; } ;
struct i40iw_rdma_read {TYPE_3__ lo_addr; TYPE_2__ rem_addr; } ;
struct i40iw_qp_uk {int swqe_polarity; } ;
struct TYPE_4__ {struct i40iw_rdma_read rdma_read; } ;
struct i40iw_post_sq_info {int local_fence; int read_fence; int signaled; int /*<<< orphan*/  wr_id; TYPE_1__ op; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_FRAG_TO ; 
 int /*<<< orphan*/  I40IWQPSQ_LOCALFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_READFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_REMSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IWQP_OP_RDMA_READ ; 
 int I40IWQP_OP_RDMA_READ_LOC_INV ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct i40iw_qp_uk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_qp_uk *qp,
					      struct i40iw_post_sq_info *info,
					      bool inv_stag,
					      bool post_sq)
{
	u64 *wqe;
	struct i40iw_rdma_read *op_info;
	u64 header;
	u32 wqe_idx;
	enum i40iw_status_code ret_code;
	u8 wqe_size;
	bool local_fence = false;

	op_info = &info->op.rdma_read;
	ret_code = FUNC1(1, &wqe_size);
	if (ret_code)
		return ret_code;
	wqe = FUNC2(qp, &wqe_idx, wqe_size, op_info->lo_addr.len, info->wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
	local_fence |= info->local_fence;

	FUNC5(wqe, 16, FUNC0(op_info->rem_addr.tag_off, I40IWQPSQ_FRAG_TO));
	header = FUNC0(op_info->rem_addr.stag, I40IWQPSQ_REMSTAG) |
		 FUNC0((inv_stag ? I40IWQP_OP_RDMA_READ_LOC_INV : I40IWQP_OP_RDMA_READ), I40IWQPSQ_OPCODE) |
		 FUNC0(info->read_fence, I40IWQPSQ_READFENCE) |
		 FUNC0(local_fence, I40IWQPSQ_LOCALFENCE) |
		 FUNC0(info->signaled, I40IWQPSQ_SIGCOMPL) |
		 FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	FUNC4(wqe, 0, &op_info->lo_addr);

	FUNC6(); /* make sure WQE is populated before valid bit is set */

	FUNC5(wqe, 24, header);
	if (post_sq)
		FUNC3(qp);

	return 0;
}