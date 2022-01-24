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
struct hns_roce_v2_mpt_entry {void* va_h; void* va_l; void* lkey; void* len_h; void* len_l; int /*<<< orphan*/  byte_12_mw_pa; int /*<<< orphan*/  byte_8_mw_cnt_en; int /*<<< orphan*/  byte_4_pd_hop_st; } ;
struct hns_roce_mr {scalar_t__ pbl_hop_num; scalar_t__ pbl_ba_pg_sz; scalar_t__ pd; int access; scalar_t__ type; int /*<<< orphan*/  iova; int /*<<< orphan*/  key; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ HNS_ROCE_HOP_NUM_0 ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_MW_BIND ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 scalar_t__ MR_TYPE_DMA ; 
 scalar_t__ MR_TYPE_MR ; 
 scalar_t__ PG_SHIFT_OFFSET ; 
 int /*<<< orphan*/  V2_MPT_BYTE_12_INNER_PA_VLD_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_12_PA_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_MPT_ST_M ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_MPT_ST_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PBL_BA_PG_SZ_M ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PBL_BA_PG_SZ_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PBL_HOP_NUM_M ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PBL_HOP_NUM_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PD_M ; 
 int /*<<< orphan*/  V2_MPT_BYTE_4_PD_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_ATOMIC_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_BIND_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_LW_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_L_INV_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_RA_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_RR_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_RW_EN_S ; 
 int /*<<< orphan*/  V2_MPT_BYTE_8_R_INV_EN_S ; 
 scalar_t__ V2_MPT_ST_VALID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_v2_mpt_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct hns_roce_v2_mpt_entry*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *mb_buf, struct hns_roce_mr *mr,
				  unsigned long mtpt_idx)
{
	struct hns_roce_v2_mpt_entry *mpt_entry;
	int ret;

	mpt_entry = mb_buf;
	FUNC2(mpt_entry, 0, sizeof(*mpt_entry));

	FUNC4(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_MPT_ST_M,
		       V2_MPT_BYTE_4_MPT_ST_S, V2_MPT_ST_VALID);
	FUNC4(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_PBL_HOP_NUM_M,
		       V2_MPT_BYTE_4_PBL_HOP_NUM_S, mr->pbl_hop_num ==
		       HNS_ROCE_HOP_NUM_0 ? 0 : mr->pbl_hop_num);
	FUNC4(mpt_entry->byte_4_pd_hop_st,
		       V2_MPT_BYTE_4_PBL_BA_PG_SZ_M,
		       V2_MPT_BYTE_4_PBL_BA_PG_SZ_S,
		       mr->pbl_ba_pg_sz + PG_SHIFT_OFFSET);
	FUNC4(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_PD_M,
		       V2_MPT_BYTE_4_PD_S, mr->pd);

	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RA_EN_S, 0);
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_R_INV_EN_S, 0);
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_L_INV_EN_S, 1);
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_BIND_EN_S,
		     (mr->access & IB_ACCESS_MW_BIND ? 1 : 0));
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_ATOMIC_EN_S,
		     mr->access & IB_ACCESS_REMOTE_ATOMIC ? 1 : 0);
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RR_EN_S,
		     (mr->access & IB_ACCESS_REMOTE_READ ? 1 : 0));
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RW_EN_S,
		     (mr->access & IB_ACCESS_REMOTE_WRITE ? 1 : 0));
	FUNC3(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_LW_EN_S,
		     (mr->access & IB_ACCESS_LOCAL_WRITE ? 1 : 0));

	FUNC3(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_PA_S,
		     mr->type == MR_TYPE_MR ? 0 : 1);
	FUNC3(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_INNER_PA_VLD_S,
		     1);

	mpt_entry->len_l = FUNC0(FUNC1(mr->size));
	mpt_entry->len_h = FUNC0(FUNC6(mr->size));
	mpt_entry->lkey = FUNC0(mr->key);
	mpt_entry->va_l = FUNC0(FUNC1(mr->iova));
	mpt_entry->va_h = FUNC0(FUNC6(mr->iova));

	if (mr->type == MR_TYPE_DMA)
		return 0;

	ret = FUNC5(mpt_entry, mr);

	return ret;
}