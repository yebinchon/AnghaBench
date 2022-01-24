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
typedef  int u64 ;
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; int /*<<< orphan*/  polarity; } ;
struct i40iw_sc_aeq {int /*<<< orphan*/  virtual_map; int /*<<< orphan*/  pbl_chunk_size; int /*<<< orphan*/  first_pm_pbl_idx; int /*<<< orphan*/  elem_cnt; TYPE_1__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_AEQ_LPBLSIZE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_AEQ_VMAP ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_DESTROY_AEQ ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(struct i40iw_sc_aeq *aeq,
						   u64 scratch,
						   bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 header;

	cqp = aeq->dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC5(wqe, 16, aeq->elem_cnt);
	FUNC5(wqe, 48, aeq->first_pm_pbl_idx);
	header = FUNC0(I40IW_CQP_OP_DESTROY_AEQ, I40IW_CQPSQ_OPCODE) |
		 FUNC0(aeq->pbl_chunk_size, I40IW_CQPSQ_AEQ_LPBLSIZE) |
		 FUNC0(aeq->virtual_map, I40IW_CQPSQ_AEQ_VMAP) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);
	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "AEQ_DESTROY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);
	if (post_sq)
		FUNC4(cqp);
	return 0;
}