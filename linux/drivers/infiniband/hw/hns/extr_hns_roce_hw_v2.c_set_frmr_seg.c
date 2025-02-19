
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_reg_wr {int access; int key; TYPE_1__* mr; } ;
struct hns_roce_wqe_frmr_seg {int mode_buf_pg_sz; void* pbl_size; } ;
struct hns_roce_v2_rc_send_wqe {int va; void* rkey; void* byte_20; void* byte_16; void* inv_key; void* msg_len; int byte_4; } ;
struct hns_roce_mr {int pbl_ba; int pbl_size; scalar_t__ pbl_buf_pg_sz; } ;
struct TYPE_2__ {int length; int iova; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 scalar_t__ PG_SHIFT_OFFSET ;
 int V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S ;
 int V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M ;
 int V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S ;
 int V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S ;
 int V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S ;
 int V2_RC_FRMR_WQE_BYTE_4_LW_S ;
 int V2_RC_FRMR_WQE_BYTE_4_RR_S ;
 int V2_RC_FRMR_WQE_BYTE_4_RW_S ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,scalar_t__) ;
 struct hns_roce_mr* to_hr_mr (TYPE_1__*) ;

__attribute__((used)) static void set_frmr_seg(struct hns_roce_v2_rc_send_wqe *rc_sq_wqe,
    struct hns_roce_wqe_frmr_seg *fseg,
    const struct ib_reg_wr *wr)
{
 struct hns_roce_mr *mr = to_hr_mr(wr->mr);


 roce_set_bit(rc_sq_wqe->byte_4,
       V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S,
       wr->access & IB_ACCESS_MW_BIND ? 1 : 0);
 roce_set_bit(rc_sq_wqe->byte_4,
       V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S,
       wr->access & IB_ACCESS_REMOTE_ATOMIC ? 1 : 0);
 roce_set_bit(rc_sq_wqe->byte_4,
       V2_RC_FRMR_WQE_BYTE_4_RR_S,
       wr->access & IB_ACCESS_REMOTE_READ ? 1 : 0);
 roce_set_bit(rc_sq_wqe->byte_4,
       V2_RC_FRMR_WQE_BYTE_4_RW_S,
       wr->access & IB_ACCESS_REMOTE_WRITE ? 1 : 0);
 roce_set_bit(rc_sq_wqe->byte_4,
       V2_RC_FRMR_WQE_BYTE_4_LW_S,
       wr->access & IB_ACCESS_LOCAL_WRITE ? 1 : 0);


 rc_sq_wqe->msg_len = cpu_to_le32(mr->pbl_ba & 0xffffffff);
 rc_sq_wqe->inv_key = cpu_to_le32(mr->pbl_ba >> 32);

 rc_sq_wqe->byte_16 = cpu_to_le32(wr->mr->length & 0xffffffff);
 rc_sq_wqe->byte_20 = cpu_to_le32(wr->mr->length >> 32);
 rc_sq_wqe->rkey = cpu_to_le32(wr->key);
 rc_sq_wqe->va = cpu_to_le64(wr->mr->iova);

 fseg->pbl_size = cpu_to_le32(mr->pbl_size);
 roce_set_field(fseg->mode_buf_pg_sz,
         V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M,
         V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S,
         mr->pbl_buf_pg_sz + PG_SHIFT_OFFSET);
 roce_set_bit(fseg->mode_buf_pg_sz,
       V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S, 0);
}
