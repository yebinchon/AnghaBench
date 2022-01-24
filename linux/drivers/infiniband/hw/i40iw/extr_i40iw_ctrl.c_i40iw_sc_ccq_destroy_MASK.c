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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  process_cqp_sds; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int cq_id; int avoid_mem_cflct; int /*<<< orphan*/  cq_size; } ;
struct i40iw_sc_cq {int ceq_id_valid; int ceq_id; int ceqe_mask; int tph_en; TYPE_2__ cq_uk; int /*<<< orphan*/  shadow_area_pa; TYPE_1__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_3__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_CEQID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_CEQIDVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_ENCEQEMASK ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_TPHEN ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_DESTROY_CQ ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_cq*,int) ; 
 int FUNC2 (struct i40iw_sc_cqp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int* FUNC6 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  i40iw_update_sds_noccq ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC9(struct i40iw_sc_cq *ccq,
						   u64 scratch,
						   bool post_sq)
{
	struct i40iw_sc_cqp *cqp;
	u64 *wqe;
	u64 header;
	enum i40iw_status_code ret_code = 0;
	u32 tail, val, error;

	cqp = ccq->dev->cqp;
	wqe = FUNC6(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC8(wqe, 0, ccq->cq_uk.cq_size);
	FUNC8(wqe, 8, FUNC1(ccq, 1));
	FUNC8(wqe, 40, ccq->shadow_area_pa);

	header = ccq->cq_uk.cq_id |
		 FUNC0((ccq->ceq_id_valid ? ccq->ceq_id : 0), I40IW_CQPSQ_CQ_CEQID) |
		 FUNC0(I40IW_CQP_OP_DESTROY_CQ, I40IW_CQPSQ_OPCODE) |
		 FUNC0(ccq->ceqe_mask, I40IW_CQPSQ_CQ_ENCEQEMASK) |
		 FUNC0(ccq->ceq_id_valid, I40IW_CQPSQ_CQ_CEQIDVALID) |
		 FUNC0(ccq->tph_en, I40IW_CQPSQ_TPHEN) |
		 FUNC0(ccq->cq_uk.avoid_mem_cflct, I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC5(wqe, header);

	FUNC3(cqp->dev, I40IW_DEBUG_WQE, "CCQ_DESTROY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	FUNC4(cqp, &val, &tail, &error);
	if (error)
		return I40IW_ERR_CQP_COMPL_ERROR;

	if (post_sq) {
		FUNC7(cqp);
		ret_code = FUNC2(cqp, tail, 1000);
	}

	cqp->process_cqp_sds = i40iw_update_sds_noccq;

	return ret_code;
}