
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_cq {int device; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cq {int cqn; int cons_index; int cq_depth; int arm_sn; int cq_db_l; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
typedef scalar_t__ __le32 ;


 int HNS_ROCE_V2_CQ_DB_NTR ;
 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int V2_CQ_DB_BYTE_4_CMD_M ;
 int V2_CQ_DB_BYTE_4_TAG_M ;
 int V2_CQ_DB_PARAMETER_CMD_SN_M ;
 int V2_CQ_DB_PARAMETER_CMD_SN_S ;
 int V2_CQ_DB_PARAMETER_CONS_IDX_M ;
 int V2_CQ_DB_PARAMETER_CONS_IDX_S ;
 int V2_CQ_DB_PARAMETER_NOTIFY_S ;
 int V2_CQ_DB_REQ_NOT ;
 int V2_CQ_DB_REQ_NOT_SOL ;
 int V2_DB_BYTE_4_CMD_S ;
 int V2_DB_BYTE_4_TAG_S ;
 int hns_roce_write64 (struct hns_roce_dev*,scalar_t__*,int ) ;
 int roce_set_bit (scalar_t__,int ,int ) ;
 int roce_set_field (scalar_t__,int ,int ,int) ;
 struct hns_roce_cq* to_hr_cq (struct ib_cq*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static int hns_roce_v2_req_notify_cq(struct ib_cq *ibcq,
         enum ib_cq_notify_flags flags)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibcq->device);
 struct hns_roce_cq *hr_cq = to_hr_cq(ibcq);
 u32 notification_flag;
 __le32 doorbell[2];

 doorbell[0] = 0;
 doorbell[1] = 0;

 notification_flag = (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
        V2_CQ_DB_REQ_NOT : V2_CQ_DB_REQ_NOT_SOL;




 roce_set_field(doorbell[0], V2_CQ_DB_BYTE_4_TAG_M, V2_DB_BYTE_4_TAG_S,
         hr_cq->cqn);
 roce_set_field(doorbell[0], V2_CQ_DB_BYTE_4_CMD_M, V2_DB_BYTE_4_CMD_S,
         HNS_ROCE_V2_CQ_DB_NTR);
 roce_set_field(doorbell[1], V2_CQ_DB_PARAMETER_CONS_IDX_M,
         V2_CQ_DB_PARAMETER_CONS_IDX_S,
         hr_cq->cons_index & ((hr_cq->cq_depth << 1) - 1));
 roce_set_field(doorbell[1], V2_CQ_DB_PARAMETER_CMD_SN_M,
         V2_CQ_DB_PARAMETER_CMD_SN_S, hr_cq->arm_sn & 0x3);
 roce_set_bit(doorbell[1], V2_CQ_DB_PARAMETER_NOTIFY_S,
       notification_flag);

 hns_roce_write64(hr_dev, doorbell, hr_cq->cq_db_l);

 return 0;
}
