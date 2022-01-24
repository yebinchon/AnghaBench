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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int polarity; } ;
struct i40iw_register_shared_stag {int access_rights; scalar_t__ addr_type; int pd_id; int new_stag_key; int new_stag_idx; int parent_stag_idx; scalar_t__ va; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY ; 
 int I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY ; 
 scalar_t__ I40IW_ADDR_TYPE_VA_BASED ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_ARIGHTS ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_IDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_KEY ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_MR ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_PARENTSTAGIDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_PDID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_REMACCENABLED ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_VABASEDTO ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_REG_SMR ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
					struct i40iw_sc_dev *dev,
					struct i40iw_register_shared_stag *info,
					u64 scratch,
					bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 temp, va64, fbo, header;
	u32 va32;
	bool remote_access;
	u8 addr_type;

	if (info->access_rights & (I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY |
				   I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY))
		remote_access = true;
	else
		remote_access = false;
	cqp = dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	va64 = (uintptr_t)(info->va);
	va32 = (u32)(va64 & 0x00000000FFFFFFFF);
	fbo = (u64)(va32 & (4096 - 1));

	FUNC5(wqe,
		      0,
		      (info->addr_type == I40IW_ADDR_TYPE_VA_BASED ? (uintptr_t)info->va : fbo));

	FUNC5(wqe,
		      8,
		      FUNC0(info->pd_id, I40IW_CQPSQ_STAG_PDID));
	temp = FUNC0(info->new_stag_key, I40IW_CQPSQ_STAG_KEY) |
	       FUNC0(info->new_stag_idx, I40IW_CQPSQ_STAG_IDX) |
	       FUNC0(info->parent_stag_idx, I40IW_CQPSQ_STAG_PARENTSTAGIDX);
	FUNC5(wqe, 16, temp);

	addr_type = (info->addr_type == I40IW_ADDR_TYPE_VA_BASED) ? 1 : 0;
	header = FUNC0(I40IW_CQP_OP_REG_SMR, I40IW_CQPSQ_OPCODE) |
		 FUNC0(1, I40IW_CQPSQ_STAG_MR) |
		 FUNC0(info->access_rights, I40IW_CQPSQ_STAG_ARIGHTS) |
		 FUNC0(remote_access, I40IW_CQPSQ_STAG_REMACCENABLED) |
		 FUNC0(addr_type, I40IW_CQPSQ_STAG_VABASEDTO) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(dev, I40IW_DEBUG_WQE, "MR_REG_SHARED WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}