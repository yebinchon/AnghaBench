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
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; TYPE_2__* hmc_info; } ;
struct i40iw_sc_cqp {int polarity; } ;
struct i40iw_reg_ns_stag_info {int page_size; int access_rights; int chunk_size; int first_pm_pbl_index; scalar_t__ addr_type; uintptr_t fbo; int total_len; int pd_id; int stag_key; int stag_idx; int reg_addr_pa; int hmc_fcn_index; int use_hmc_fcn_index; int use_pf_rid; scalar_t__ va; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
typedef  enum i40iw_page_size { ____Placeholder_i40iw_page_size } i40iw_page_size ;
struct TYPE_4__ {TYPE_1__* hmc_obj; } ;
struct TYPE_3__ {int cnt; } ;

/* Variables and functions */
 int I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY ; 
 int I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY ; 
 scalar_t__ I40IW_ADDR_TYPE_VA_BASED ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_ARIGHTS ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_HPAGESIZE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_IDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_KEY ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_LPBLSIZE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_MR ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_PDID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_REMACCENABLED ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_STAGLEN ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_USEHMCFNIDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_USEPFRID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_VABASEDTO ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_REG_MR ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_INVALID_PBLE_INDEX ; 
 int I40IW_ERR_RING_FULL ; 
 size_t I40IW_HMC_IW_PBLE ; 
 int I40IW_PAGE_SIZE_2M ; 
 int I40IW_PAGE_SIZE_4K ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
				struct i40iw_sc_dev *dev,
				struct i40iw_reg_ns_stag_info *info,
				u64 scratch,
				bool post_sq)
{
	u64 *wqe;
	u64 temp;
	struct i40iw_sc_cqp *cqp;
	u64 header;
	u32 pble_obj_cnt;
	bool remote_access;
	u8 addr_type;
	enum i40iw_page_size page_size;

	page_size = (info->page_size == 0x200000) ? I40IW_PAGE_SIZE_2M : I40IW_PAGE_SIZE_4K;
	if (info->access_rights & (I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY |
				   I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY))
		remote_access = true;
	else
		remote_access = false;

	pble_obj_cnt = dev->hmc_info->hmc_obj[I40IW_HMC_IW_PBLE].cnt;

	if (info->chunk_size && (info->first_pm_pbl_index >= pble_obj_cnt))
		return I40IW_ERR_INVALID_PBLE_INDEX;

	cqp = dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	temp = (info->addr_type == I40IW_ADDR_TYPE_VA_BASED) ? (uintptr_t)info->va : info->fbo;
	FUNC5(wqe, 0, temp);

	FUNC5(wqe,
		      8,
		      FUNC0(info->total_len, I40IW_CQPSQ_STAG_STAGLEN) |
		      FUNC0(info->pd_id, I40IW_CQPSQ_STAG_PDID));

	FUNC5(wqe,
		      16,
		      FUNC0(info->stag_key, I40IW_CQPSQ_STAG_KEY) |
		      FUNC0(info->stag_idx, I40IW_CQPSQ_STAG_IDX));
	if (!info->chunk_size) {
		FUNC5(wqe, 32, info->reg_addr_pa);
		FUNC5(wqe, 48, 0);
	} else {
		FUNC5(wqe, 32, 0);
		FUNC5(wqe, 48, info->first_pm_pbl_index);
	}
	FUNC5(wqe, 40, info->hmc_fcn_index);
	FUNC5(wqe, 56, 0);

	addr_type = (info->addr_type == I40IW_ADDR_TYPE_VA_BASED) ? 1 : 0;
	header = FUNC0(I40IW_CQP_OP_REG_MR, I40IW_CQPSQ_OPCODE) |
		 FUNC0(1, I40IW_CQPSQ_STAG_MR) |
		 FUNC0(info->chunk_size, I40IW_CQPSQ_STAG_LPBLSIZE) |
		 FUNC0(page_size, I40IW_CQPSQ_STAG_HPAGESIZE) |
		 FUNC0(info->access_rights, I40IW_CQPSQ_STAG_ARIGHTS) |
		 FUNC0(remote_access, I40IW_CQPSQ_STAG_REMACCENABLED) |
		 FUNC0(addr_type, I40IW_CQPSQ_STAG_VABASEDTO) |
		 FUNC0(info->use_hmc_fcn_index, I40IW_CQPSQ_STAG_USEHMCFNIDX) |
		 FUNC0(info->use_pf_rid, I40IW_CQPSQ_STAG_USEPFRID) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(dev, I40IW_DEBUG_WQE, "MR_REG_NS WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}