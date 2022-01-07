
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_cq {int cq_depth; int cqn; int cq_db_l; } ;
typedef scalar_t__ __le32 ;


 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M ;
 int ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S ;
 scalar_t__ cpu_to_le32 (int) ;
 int hns_roce_write64_k (scalar_t__*,int ) ;
 int roce_set_bit (scalar_t__,int ,int) ;
 int roce_set_field (scalar_t__,int ,int ,int) ;

__attribute__((used)) static void hns_roce_v1_cq_set_ci(struct hns_roce_cq *hr_cq, u32 cons_index)
{
 __le32 doorbell[2];

 doorbell[0] = cpu_to_le32(cons_index & ((hr_cq->cq_depth << 1) - 1));
 doorbell[1] = 0;
 roce_set_bit(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S, 1);
 roce_set_field(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M,
         ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S, 3);
 roce_set_field(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M,
         ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S, 0);
 roce_set_field(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M,
         ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S, hr_cq->cqn);

 hns_roce_write64_k(doorbell, hr_cq->cq_db_l);
}
