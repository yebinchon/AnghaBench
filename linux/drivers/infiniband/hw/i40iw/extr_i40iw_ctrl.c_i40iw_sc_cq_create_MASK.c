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
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int cq_id; int cq_size; int avoid_mem_cflct; } ;
struct i40iw_sc_cq {scalar_t__ ceq_id; int shadow_read_threshold; int virtual_map; int cq_pa; int shadow_area_pa; int first_pm_pbl_idx; int tph_val; int ceq_id_valid; int pbl_chunk_size; int ceqe_mask; int tph_en; TYPE_2__ cq_uk; TYPE_1__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_3__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_CEQID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_CEQIDVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_CHKOVERFLOW ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_ENCEQEMASK ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_LPBLSIZE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD ; 
 int /*<<< orphan*/  I40IW_CQPSQ_CQ_VIRTMAP ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_TPHEN ; 
 int /*<<< orphan*/  I40IW_CQPSQ_TPHVAL ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_CREATE_CQ ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_INVALID_CEQ_ID ; 
 int I40IW_ERR_INVALID_CQ_ID ; 
 int I40IW_ERR_RING_FULL ; 
 scalar_t__ I40IW_MAX_CEQID ; 
 int I40IW_MAX_CQID ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_sc_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* FUNC4 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_sc_cq *cq,
						 u64 scratch,
						 bool check_overflow,
						 bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 header;

	if (cq->cq_uk.cq_id > I40IW_MAX_CQID)
		return I40IW_ERR_INVALID_CQ_ID;

	if (cq->ceq_id > I40IW_MAX_CEQID)
		return I40IW_ERR_INVALID_CEQ_ID;

	cqp = cq->dev->cqp;
	wqe = FUNC4(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	FUNC6(wqe, 0, cq->cq_uk.cq_size);
	FUNC6(wqe, 8, FUNC1(cq, 1));
	FUNC6(wqe,
		      16,
		      FUNC0(cq->shadow_read_threshold, I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD));

	FUNC6(wqe, 32, (cq->virtual_map ? 0 : cq->cq_pa));

	FUNC6(wqe, 40, cq->shadow_area_pa);
	FUNC6(wqe, 48, (cq->virtual_map ? cq->first_pm_pbl_idx : 0));
	FUNC6(wqe, 56, FUNC0(cq->tph_val, I40IW_CQPSQ_TPHVAL));

	header = cq->cq_uk.cq_id |
		 FUNC0((cq->ceq_id_valid ? cq->ceq_id : 0), I40IW_CQPSQ_CQ_CEQID) |
		 FUNC0(I40IW_CQP_OP_CREATE_CQ, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cq->pbl_chunk_size, I40IW_CQPSQ_CQ_LPBLSIZE) |
		 FUNC0(check_overflow, I40IW_CQPSQ_CQ_CHKOVERFLOW) |
		 FUNC0(cq->virtual_map, I40IW_CQPSQ_CQ_VIRTMAP) |
		 FUNC0(cq->ceqe_mask, I40IW_CQPSQ_CQ_ENCEQEMASK) |
		 FUNC0(cq->ceq_id_valid, I40IW_CQPSQ_CQ_CEQIDVALID) |
		 FUNC0(cq->tph_en, I40IW_CQPSQ_TPHEN) |
		 FUNC0(cq->cq_uk.avoid_mem_cflct, I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC3(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "CQ_CREATE WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC5(cqp);
	return 0;
}