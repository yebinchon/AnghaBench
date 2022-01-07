
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_mpt_entry {int byte_64_buf_pa1; int byte_48_mode_ba; void* pbl_ba_l; void* pbl_size; int byte_12_mw_pa; int byte_8_mw_cnt_en; int byte_4_pd_hop_st; } ;
struct hns_roce_mr {int pbl_ba_pg_sz; int pd; int pbl_ba; int pbl_buf_pg_sz; int pbl_size; } ;


 int PG_SHIFT_OFFSET ;
 int V2_MPT_BYTE_12_BPD_S ;
 int V2_MPT_BYTE_12_FRE_S ;
 int V2_MPT_BYTE_12_MR_MW_S ;
 int V2_MPT_BYTE_12_PA_S ;
 int V2_MPT_BYTE_48_PBL_BA_H_M ;
 int V2_MPT_BYTE_48_PBL_BA_H_S ;
 int V2_MPT_BYTE_4_MPT_ST_M ;
 int V2_MPT_BYTE_4_MPT_ST_S ;
 int V2_MPT_BYTE_4_PBL_BA_PG_SZ_M ;
 int V2_MPT_BYTE_4_PBL_BA_PG_SZ_S ;
 int V2_MPT_BYTE_4_PBL_HOP_NUM_M ;
 int V2_MPT_BYTE_4_PBL_HOP_NUM_S ;
 int V2_MPT_BYTE_4_PD_M ;
 int V2_MPT_BYTE_4_PD_S ;
 int V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M ;
 int V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S ;
 int V2_MPT_BYTE_8_L_INV_EN_S ;
 int V2_MPT_BYTE_8_RA_EN_S ;
 int V2_MPT_BYTE_8_R_INV_EN_S ;
 int V2_MPT_ST_FREE ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int) ;
 int memset (struct hns_roce_v2_mpt_entry*,int ,int) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int hns_roce_v2_frmr_write_mtpt(void *mb_buf, struct hns_roce_mr *mr)
{
 struct hns_roce_v2_mpt_entry *mpt_entry;

 mpt_entry = mb_buf;
 memset(mpt_entry, 0, sizeof(*mpt_entry));

 roce_set_field(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_MPT_ST_M,
         V2_MPT_BYTE_4_MPT_ST_S, V2_MPT_ST_FREE);
 roce_set_field(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_PBL_HOP_NUM_M,
         V2_MPT_BYTE_4_PBL_HOP_NUM_S, 1);
 roce_set_field(mpt_entry->byte_4_pd_hop_st,
         V2_MPT_BYTE_4_PBL_BA_PG_SZ_M,
         V2_MPT_BYTE_4_PBL_BA_PG_SZ_S,
         mr->pbl_ba_pg_sz + PG_SHIFT_OFFSET);
 roce_set_field(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_PD_M,
         V2_MPT_BYTE_4_PD_S, mr->pd);

 roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RA_EN_S, 1);
 roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_R_INV_EN_S, 1);
 roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_L_INV_EN_S, 1);

 roce_set_bit(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_FRE_S, 1);
 roce_set_bit(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_PA_S, 0);
 roce_set_bit(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_MR_MW_S, 0);
 roce_set_bit(mpt_entry->byte_12_mw_pa, V2_MPT_BYTE_12_BPD_S, 1);

 mpt_entry->pbl_size = cpu_to_le32(mr->pbl_size);

 mpt_entry->pbl_ba_l = cpu_to_le32(lower_32_bits(mr->pbl_ba >> 3));
 roce_set_field(mpt_entry->byte_48_mode_ba, V2_MPT_BYTE_48_PBL_BA_H_M,
         V2_MPT_BYTE_48_PBL_BA_H_S,
         upper_32_bits(mr->pbl_ba >> 3));

 roce_set_field(mpt_entry->byte_64_buf_pa1,
         V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M,
         V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S,
         mr->pbl_buf_pg_sz + PG_SHIFT_OFFSET);

 return 0;
}
