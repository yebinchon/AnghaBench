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
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  process_cqp_sds; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int cq_size; int cq_id; int avoid_mem_cflct; } ;
struct i40iw_sc_cq {int shadow_read_threshold; int virtual_map; int cq_pa; int shadow_area_pa; int first_pm_pbl_idx; int tph_val; int ceq_id_valid; int ceq_id; int pbl_chunk_size; int ceqe_mask; int tph_en; TYPE_2__ cq_uk; TYPE_1__* dev; } ;
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
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_sc_cq*,int) ; 
 int /*<<< orphan*/  i40iw_cqp_sds_cmd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int FUNC4 (struct i40iw_sc_cq*) ; 
 int* FUNC5 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC8(struct i40iw_sc_cq *ccq,
						  u64 scratch,
						  bool check_overflow,
						  bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 header;
	enum i40iw_status_code ret_code;

	cqp = ccq->dev->cqp;
	wqe = FUNC5(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC7(wqe, 0, ccq->cq_uk.cq_size);
	FUNC7(wqe, 8, FUNC1(ccq, 1));
	FUNC7(wqe, 16,
		      FUNC0(ccq->shadow_read_threshold, I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD));
	FUNC7(wqe, 32, (ccq->virtual_map ? 0 : ccq->cq_pa));
	FUNC7(wqe, 40, ccq->shadow_area_pa);
	FUNC7(wqe, 48,
		      (ccq->virtual_map ? ccq->first_pm_pbl_idx : 0));
	FUNC7(wqe, 56,
		      FUNC0(ccq->tph_val, I40IW_CQPSQ_TPHVAL));

	header = ccq->cq_uk.cq_id |
		 FUNC0((ccq->ceq_id_valid ? ccq->ceq_id : 0), I40IW_CQPSQ_CQ_CEQID) |
		 FUNC0(I40IW_CQP_OP_CREATE_CQ, I40IW_CQPSQ_OPCODE) |
		 FUNC0(ccq->pbl_chunk_size, I40IW_CQPSQ_CQ_LPBLSIZE) |
		 FUNC0(check_overflow, I40IW_CQPSQ_CQ_CHKOVERFLOW) |
		 FUNC0(ccq->virtual_map, I40IW_CQPSQ_CQ_VIRTMAP) |
		 FUNC0(ccq->ceqe_mask, I40IW_CQPSQ_CQ_ENCEQEMASK) |
		 FUNC0(ccq->ceq_id_valid, I40IW_CQPSQ_CQ_CEQIDVALID) |
		 FUNC0(ccq->tph_en, I40IW_CQPSQ_TPHEN) |
		 FUNC0(ccq->cq_uk.avoid_mem_cflct, I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC3(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "CCQ_CREATE WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq) {
		FUNC6(cqp);
		ret_code = FUNC4(ccq);
		if (ret_code)
			return ret_code;
	}
	cqp->process_cqp_sds = i40iw_cqp_sds_cmd;

	return 0;
}