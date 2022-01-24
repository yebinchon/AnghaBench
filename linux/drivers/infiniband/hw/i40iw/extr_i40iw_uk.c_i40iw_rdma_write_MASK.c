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
typedef  size_t u32 ;
struct TYPE_5__ {int tag_off; int stag; } ;
struct i40iw_rdma_write {size_t num_lo_sges; TYPE_3__* lo_sg_list; TYPE_2__ rem_addr; } ;
struct i40iw_qp_uk {size_t max_sq_frag_cnt; int swqe_polarity; } ;
struct TYPE_4__ {struct i40iw_rdma_write rdma_write; } ;
struct i40iw_post_sq_info {int read_fence; int local_fence; int signaled; int /*<<< orphan*/  wr_id; TYPE_1__ op; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_6__ {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_ADDFRAGCNT ; 
 int /*<<< orphan*/  I40IWQPSQ_FRAG_TO ; 
 int /*<<< orphan*/  I40IWQPSQ_LOCALFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_READFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_REMSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IWQP_OP_RDMA_WRITE ; 
 int I40IW_ERR_BAD_STAG ; 
 int I40IW_ERR_INVALID_FRAG_COUNT ; 
 int I40IW_ERR_QP_INVALID_MSG_SIZE ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 size_t I40IW_MAX_OUTBOUND_MESSAGE_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct i40iw_qp_uk*,size_t*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC4 (int*,size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_qp_uk *qp,
					       struct i40iw_post_sq_info *info,
					       bool post_sq)
{
	u64 header;
	u64 *wqe;
	struct i40iw_rdma_write *op_info;
	u32 i, wqe_idx;
	u32 total_size = 0, byte_off;
	enum i40iw_status_code ret_code;
	bool read_fence = false;
	u8 wqe_size;

	op_info = &info->op.rdma_write;
	if (op_info->num_lo_sges > qp->max_sq_frag_cnt)
		return I40IW_ERR_INVALID_FRAG_COUNT;

	for (i = 0; i < op_info->num_lo_sges; i++)
		total_size += op_info->lo_sg_list[i].len;

	if (total_size > I40IW_MAX_OUTBOUND_MESSAGE_SIZE)
		return I40IW_ERR_QP_INVALID_MSG_SIZE;

	read_fence |= info->read_fence;

	ret_code = FUNC1(op_info->num_lo_sges, &wqe_size);
	if (ret_code)
		return ret_code;

	wqe = FUNC2(qp, &wqe_idx, wqe_size, total_size, info->wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
	FUNC5(wqe, 16,
		      FUNC0(op_info->rem_addr.tag_off, I40IWQPSQ_FRAG_TO));
	if (!op_info->rem_addr.stag)
		return I40IW_ERR_BAD_STAG;

	header = FUNC0(op_info->rem_addr.stag, I40IWQPSQ_REMSTAG) |
		 FUNC0(I40IWQP_OP_RDMA_WRITE, I40IWQPSQ_OPCODE) |
		 FUNC0((op_info->num_lo_sges > 1 ?  (op_info->num_lo_sges - 1) : 0), I40IWQPSQ_ADDFRAGCNT) |
		 FUNC0(read_fence, I40IWQPSQ_READFENCE) |
		 FUNC0(info->local_fence, I40IWQPSQ_LOCALFENCE) |
		 FUNC0(info->signaled, I40IWQPSQ_SIGCOMPL) |
		 FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	FUNC4(wqe, 0, op_info->lo_sg_list);

	for (i = 1, byte_off = 32; i < op_info->num_lo_sges; i++) {
		FUNC4(wqe, byte_off, &op_info->lo_sg_list[i]);
		byte_off += 16;
	}

	FUNC6(); /* make sure WQE is populated before valid bit is set */

	FUNC5(wqe, 24, header);

	if (post_sq)
		FUNC3(qp);

	return 0;
}