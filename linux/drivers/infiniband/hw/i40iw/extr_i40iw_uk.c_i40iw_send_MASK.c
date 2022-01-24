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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct i40iw_qp_uk {size_t max_sq_frag_cnt; int swqe_polarity; } ;
struct i40iw_post_send {size_t num_sges; TYPE_2__* sg_list; } ;
struct TYPE_3__ {struct i40iw_post_send send; } ;
struct i40iw_post_sq_info {int read_fence; int op_type; int local_fence; int signaled; int /*<<< orphan*/  wr_id; TYPE_1__ op; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_ADDFRAGCNT ; 
 int /*<<< orphan*/  I40IWQPSQ_LOCALFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_READFENCE ; 
 int /*<<< orphan*/  I40IWQPSQ_REMSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IW_ERR_INVALID_FRAG_COUNT ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct i40iw_qp_uk*,size_t*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC4 (int*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_qp_uk *qp,
					 struct i40iw_post_sq_info *info,
					 u32 stag_to_inv,
					 bool post_sq)
{
	u64 *wqe;
	struct i40iw_post_send *op_info;
	u64 header;
	u32 i, wqe_idx, total_size = 0, byte_off;
	enum i40iw_status_code ret_code;
	bool read_fence = false;
	u8 wqe_size;

	op_info = &info->op.send;
	if (qp->max_sq_frag_cnt < op_info->num_sges)
		return I40IW_ERR_INVALID_FRAG_COUNT;

	for (i = 0; i < op_info->num_sges; i++)
		total_size += op_info->sg_list[i].len;
	ret_code = FUNC1(op_info->num_sges, &wqe_size);
	if (ret_code)
		return ret_code;

	wqe = FUNC2(qp, &wqe_idx, wqe_size, total_size, info->wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;

	read_fence |= info->read_fence;
	FUNC5(wqe, 16, 0);
	header = FUNC0(stag_to_inv, I40IWQPSQ_REMSTAG) |
		 FUNC0(info->op_type, I40IWQPSQ_OPCODE) |
		 FUNC0((op_info->num_sges > 1 ? (op_info->num_sges - 1) : 0),
		       I40IWQPSQ_ADDFRAGCNT) |
		 FUNC0(read_fence, I40IWQPSQ_READFENCE) |
		 FUNC0(info->local_fence, I40IWQPSQ_LOCALFENCE) |
		 FUNC0(info->signaled, I40IWQPSQ_SIGCOMPL) |
		 FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	FUNC4(wqe, 0, op_info->sg_list);

	for (i = 1, byte_off = 32; i < op_info->num_sges; i++) {
		FUNC4(wqe, byte_off, &op_info->sg_list[i]);
		byte_off += 16;
	}

	FUNC6(); /* make sure WQE is populated before valid bit is set */

	FUNC5(wqe, 24, header);
	if (post_sq)
		FUNC3(qp);

	return 0;
}