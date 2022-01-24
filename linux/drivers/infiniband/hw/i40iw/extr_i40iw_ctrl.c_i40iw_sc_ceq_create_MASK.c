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
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; scalar_t__ polarity; } ;
struct i40iw_sc_ceq {int elem_cnt; int ceq_elem_pa; int first_pm_pbl_idx; int ceq_id; scalar_t__ tph_en; scalar_t__ virtual_map; scalar_t__ pbl_chunk_size; scalar_t__ tph_val; TYPE_1__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_CEQ_LPBLSIZE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CEQ_VMAP ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_TPHEN ; 
 int /*<<< orphan*/  I40IW_CQPSQ_TPHVAL ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 scalar_t__ I40IW_CQP_OP_CREATE_CEQ ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(struct i40iw_sc_ceq *ceq,
						  u64 scratch,
						  bool post_sq)
{
	struct i40iw_sc_cqp *cqp;
	u64 *wqe;
	u64 header;

	cqp = ceq->dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC5(wqe, 16, ceq->elem_cnt);
	FUNC5(wqe, 32, (ceq->virtual_map ? 0 : ceq->ceq_elem_pa));
	FUNC5(wqe, 48, (ceq->virtual_map ? ceq->first_pm_pbl_idx : 0));
	FUNC5(wqe, 56, FUNC0(ceq->tph_val, I40IW_CQPSQ_TPHVAL));

	header = ceq->ceq_id |
		 FUNC0(I40IW_CQP_OP_CREATE_CEQ, I40IW_CQPSQ_OPCODE) |
		 FUNC0(ceq->pbl_chunk_size, I40IW_CQPSQ_CEQ_LPBLSIZE) |
		 FUNC0(ceq->virtual_map, I40IW_CQPSQ_CEQ_VMAP) |
		 FUNC0(ceq->tph_en, I40IW_CQPSQ_TPHEN) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "CEQ_CREATE WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}