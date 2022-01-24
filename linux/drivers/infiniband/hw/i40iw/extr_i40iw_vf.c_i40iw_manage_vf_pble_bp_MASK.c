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
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_manage_vf_pble_info {int pd_entry_cnt; int first_pd_index; int sd_index; int pd_pl_pba; scalar_t__ inv_pd_ent; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_MVPBP_FIRST_PD_INX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MVPBP_INV_PD_ENT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MVPBP_PD_ENTRY_CNT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MVPBP_PD_PLPBA ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MVPBP_SD_INX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_MANAGE_VF_PBLE_BP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int* FUNC2 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

enum i40iw_status_code FUNC5(struct i40iw_sc_cqp *cqp,
					       struct i40iw_manage_vf_pble_info *info,
					       u64 scratch,
					       bool post_sq)
{
	u64 *wqe;
	u64 temp, header, pd_pl_pba = 0;

	wqe = FUNC2(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	temp = FUNC0(info->pd_entry_cnt, I40IW_CQPSQ_MVPBP_PD_ENTRY_CNT) |
	    FUNC0(info->first_pd_index, I40IW_CQPSQ_MVPBP_FIRST_PD_INX) |
	    FUNC0(info->sd_index, I40IW_CQPSQ_MVPBP_SD_INX);
	FUNC4(wqe, 16, temp);

	header = FUNC0((info->inv_pd_ent ? 1 : 0), I40IW_CQPSQ_MVPBP_INV_PD_ENT) |
	    FUNC0(I40IW_CQP_OP_MANAGE_VF_PBLE_BP, I40IW_CQPSQ_OPCODE) |
	    FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);
	FUNC4(wqe, 24, header);

	pd_pl_pba = FUNC0(info->pd_pl_pba >> 3, I40IW_CQPSQ_MVPBP_PD_PLPBA);
	FUNC4(wqe, 32, pd_pl_pba);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "MANAGE VF_PBLE_BP WQE", wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC3(cqp);
	return 0;
}