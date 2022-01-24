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
struct ib_reg_wr {int access; int key; TYPE_1__* mr; } ;
struct hns_roce_wqe_frmr_seg {int /*<<< orphan*/  mode_buf_pg_sz; void* pbl_size; } ;
struct hns_roce_v2_rc_send_wqe {int /*<<< orphan*/  va; void* rkey; void* byte_20; void* byte_16; void* inv_key; void* msg_len; int /*<<< orphan*/  byte_4; } ;
struct hns_roce_mr {int pbl_ba; int pbl_size; scalar_t__ pbl_buf_pg_sz; } ;
struct TYPE_2__ {int length; int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_MW_BIND ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 scalar_t__ PG_SHIFT_OFFSET ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_4_LW_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_4_RR_S ; 
 int /*<<< orphan*/  V2_RC_FRMR_WQE_BYTE_4_RW_S ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct hns_roce_mr* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct hns_roce_v2_rc_send_wqe *rc_sq_wqe,
			 struct hns_roce_wqe_frmr_seg *fseg,
			 const struct ib_reg_wr *wr)
{
	struct hns_roce_mr *mr = FUNC4(wr->mr);

	/* use ib_access_flags */
	FUNC2(rc_sq_wqe->byte_4,
		     V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S,
		     wr->access & IB_ACCESS_MW_BIND ? 1 : 0);
	FUNC2(rc_sq_wqe->byte_4,
		     V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S,
		     wr->access & IB_ACCESS_REMOTE_ATOMIC ? 1 : 0);
	FUNC2(rc_sq_wqe->byte_4,
		     V2_RC_FRMR_WQE_BYTE_4_RR_S,
		     wr->access & IB_ACCESS_REMOTE_READ ? 1 : 0);
	FUNC2(rc_sq_wqe->byte_4,
		     V2_RC_FRMR_WQE_BYTE_4_RW_S,
		     wr->access & IB_ACCESS_REMOTE_WRITE ? 1 : 0);
	FUNC2(rc_sq_wqe->byte_4,
		     V2_RC_FRMR_WQE_BYTE_4_LW_S,
		     wr->access & IB_ACCESS_LOCAL_WRITE ? 1 : 0);

	/* Data structure reuse may lead to confusion */
	rc_sq_wqe->msg_len = FUNC0(mr->pbl_ba & 0xffffffff);
	rc_sq_wqe->inv_key = FUNC0(mr->pbl_ba >> 32);

	rc_sq_wqe->byte_16 = FUNC0(wr->mr->length & 0xffffffff);
	rc_sq_wqe->byte_20 = FUNC0(wr->mr->length >> 32);
	rc_sq_wqe->rkey = FUNC0(wr->key);
	rc_sq_wqe->va = FUNC1(wr->mr->iova);

	fseg->pbl_size = FUNC0(mr->pbl_size);
	FUNC3(fseg->mode_buf_pg_sz,
		       V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M,
		       V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S,
		       mr->pbl_buf_pg_sz + PG_SHIFT_OFFSET);
	FUNC2(fseg->mode_buf_pg_sz,
		     V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S, 0);
}