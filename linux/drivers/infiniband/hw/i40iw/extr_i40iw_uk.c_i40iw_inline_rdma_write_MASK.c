#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct i40iw_qp_uk {int swqe_polarity; scalar_t__ push_wqe; scalar_t__ push_db; } ;
struct TYPE_4__ {int tag_off; int stag; } ;
struct i40iw_inline_rdma_write {int len; scalar_t__ data; TYPE_2__ rem_addr; } ;
struct TYPE_3__ {struct i40iw_inline_rdma_write inline_rdma_write; } ;
struct i40iw_post_sq_info {int read_fence; int local_fence; int signaled; int /*<<< orphan*/  wr_id; TYPE_1__ op; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_FRAG_TO ; 
 int /*<<< orphan*/  I40IWQPSQ_INLINEDATAFLAG ; 
 int /*<<< orphan*/  I40IWQPSQ_INLINEDATALEN ; 
 int /*<<< orphan*/  I40IWQPSQ_LOCALFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_PUSHWQE ; 
 int /*<<< orphan*/  I40IWQPSQ_READFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_REMSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IWQP_OP_RDMA_WRITE ; 
 int I40IW_ERR_INVALID_INLINE_DATA_SIZE ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int I40IW_MAX_INLINE_DATA_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int*) ; 
 int* FUNC2 (struct i40iw_qp_uk*,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_qp_uk*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC8(struct i40iw_qp_uk *qp,
						      struct i40iw_post_sq_info *info,
						      bool post_sq)
{
	u64 *wqe;
	u8 *dest, *src;
	struct i40iw_inline_rdma_write *op_info;
	u64 *push;
	u64 header = 0;
	u32 wqe_idx;
	enum i40iw_status_code ret_code;
	bool read_fence = false;
	u8 wqe_size;

	op_info = &info->op.inline_rdma_write;
	if (op_info->len > I40IW_MAX_INLINE_DATA_SIZE)
		return I40IW_ERR_INVALID_INLINE_DATA_SIZE;

	ret_code = FUNC1(op_info->len, &wqe_size);
	if (ret_code)
		return ret_code;

	wqe = FUNC2(qp, &wqe_idx, wqe_size, op_info->len, info->wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;

	read_fence |= info->read_fence;
	FUNC6(wqe, 16,
		      FUNC0(op_info->rem_addr.tag_off, I40IWQPSQ_FRAG_TO));

	header = FUNC0(op_info->rem_addr.stag, I40IWQPSQ_REMSTAG) |
		 FUNC0(I40IWQP_OP_RDMA_WRITE, I40IWQPSQ_OPCODE) |
		 FUNC0(op_info->len, I40IWQPSQ_INLINEDATALEN) |
		 FUNC0(1, I40IWQPSQ_INLINEDATAFLAG) |
		 FUNC0((qp->push_db ? 1 : 0), I40IWQPSQ_PUSHWQE) |
		 FUNC0(read_fence, I40IWQPSQ_READFENCE) |
		 FUNC0(info->local_fence, I40IWQPSQ_LOCALFENCE) |
		 FUNC0(info->signaled, I40IWQPSQ_SIGCOMPL) |
		 FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	dest = (u8 *)wqe;
	src = (u8 *)(op_info->data);

	if (op_info->len <= 16) {
		FUNC5(dest, src, op_info->len);
	} else {
		FUNC5(dest, src, 16);
		src += 16;
		dest = (u8 *)wqe + 32;
		FUNC5(dest, src, op_info->len - 16);
	}

	FUNC7(); /* make sure WQE is populated before valid bit is set */

	FUNC6(wqe, 24, header);

	if (qp->push_db) {
		push = (u64 *)((uintptr_t)qp->push_wqe + (wqe_idx & 0x3) * 0x20);
		FUNC5(push, wqe, (op_info->len > 16) ? op_info->len + 16 : 32);
		FUNC4(qp, wqe_idx);
	} else {
		if (post_sq)
			FUNC3(qp);
	}

	return 0;
}