#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i40iw_qp_uk {int swqe_polarity; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IWQP_OP_NOP ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int /*<<< orphan*/  I40IW_QP_WQE_MIN_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int* FUNC1 (struct i40iw_qp_uk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_qp_uk*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

enum i40iw_status_code FUNC5(struct i40iw_qp_uk *qp,
				 u64 wr_id,
				 bool signaled,
				 bool post_sq)
{
	u64 header, *wqe;
	u32 wqe_idx;

	wqe = FUNC1(qp, &wqe_idx, I40IW_QP_WQE_MIN_SIZE, 0, wr_id);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
	FUNC3(wqe, 0, 0);
	FUNC3(wqe, 8, 0);
	FUNC3(wqe, 16, 0);

	header = FUNC0(I40IWQP_OP_NOP, I40IWQPSQ_OPCODE) |
	    FUNC0(signaled, I40IWQPSQ_SIGCOMPL) |
	    FUNC0(qp->swqe_polarity, I40IWQPSQ_VALID);

	FUNC4(); /* make sure WQE is populated before valid bit is set */

	FUNC3(wqe, 24, header);
	if (post_sq)
		FUNC2(qp);

	return 0;
}