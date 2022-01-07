
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef int u32 ;
struct hns_roce_v2_mpt_entry {void* len_h; void* len_l; void* va_h; void* va_l; int byte_8_mw_cnt_en; int byte_4_pd_hop_st; } ;
struct hns_roce_mr {void* size; void* iova; int pd; } ;
struct hns_roce_dev {int dummy; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_MR_REREG_ACCESS ;
 int IB_MR_REREG_PD ;
 int IB_MR_REREG_TRANS ;
 int V2_MPT_BYTE_4_MPT_ST_M ;
 int V2_MPT_BYTE_4_MPT_ST_S ;
 int V2_MPT_BYTE_4_PD_M ;
 int V2_MPT_BYTE_4_PD_S ;
 int V2_MPT_BYTE_8_ATOMIC_EN_S ;
 int V2_MPT_BYTE_8_BIND_EN_S ;
 int V2_MPT_BYTE_8_LW_EN_S ;
 int V2_MPT_BYTE_8_RR_EN_S ;
 int V2_MPT_BYTE_8_RW_EN_S ;
 int V2_MPT_ST_VALID ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (void*) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,int ) ;
 int set_mtpt_pbl (struct hns_roce_v2_mpt_entry*,struct hns_roce_mr*) ;
 int upper_32_bits (void*) ;

__attribute__((used)) static int hns_roce_v2_rereg_write_mtpt(struct hns_roce_dev *hr_dev,
     struct hns_roce_mr *mr, int flags,
     u32 pdn, int mr_access_flags, u64 iova,
     u64 size, void *mb_buf)
{
 struct hns_roce_v2_mpt_entry *mpt_entry = mb_buf;
 int ret = 0;

 roce_set_field(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_MPT_ST_M,
         V2_MPT_BYTE_4_MPT_ST_S, V2_MPT_ST_VALID);

 if (flags & IB_MR_REREG_PD) {
  roce_set_field(mpt_entry->byte_4_pd_hop_st, V2_MPT_BYTE_4_PD_M,
          V2_MPT_BYTE_4_PD_S, pdn);
  mr->pd = pdn;
 }

 if (flags & IB_MR_REREG_ACCESS) {
  roce_set_bit(mpt_entry->byte_8_mw_cnt_en,
        V2_MPT_BYTE_8_BIND_EN_S,
        (mr_access_flags & IB_ACCESS_MW_BIND ? 1 : 0));
  roce_set_bit(mpt_entry->byte_8_mw_cnt_en,
        V2_MPT_BYTE_8_ATOMIC_EN_S,
        mr_access_flags & IB_ACCESS_REMOTE_ATOMIC ? 1 : 0);
  roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RR_EN_S,
        mr_access_flags & IB_ACCESS_REMOTE_READ ? 1 : 0);
  roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_RW_EN_S,
        mr_access_flags & IB_ACCESS_REMOTE_WRITE ? 1 : 0);
  roce_set_bit(mpt_entry->byte_8_mw_cnt_en, V2_MPT_BYTE_8_LW_EN_S,
        mr_access_flags & IB_ACCESS_LOCAL_WRITE ? 1 : 0);
 }

 if (flags & IB_MR_REREG_TRANS) {
  mpt_entry->va_l = cpu_to_le32(lower_32_bits(iova));
  mpt_entry->va_h = cpu_to_le32(upper_32_bits(iova));
  mpt_entry->len_l = cpu_to_le32(lower_32_bits(size));
  mpt_entry->len_h = cpu_to_le32(upper_32_bits(size));

  mr->iova = iova;
  mr->size = size;

  ret = set_mtpt_pbl(mpt_entry, mr);
 }

 return ret;
}
