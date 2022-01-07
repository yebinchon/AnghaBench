
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_eq {scalar_t__ type_flag; scalar_t__ arm_st; int eqn; int cons_index; int doorbell; struct hns_roce_dev* hr_dev; } ;
struct hns_roce_dev {int dummy; } ;
typedef scalar_t__ __le32 ;


 scalar_t__ HNS_ROCE_AEQ ;
 int HNS_ROCE_EQ_DB_CMD_AEQ ;
 int HNS_ROCE_EQ_DB_CMD_AEQ_ARMED ;
 int HNS_ROCE_EQ_DB_CMD_CEQ ;
 int HNS_ROCE_EQ_DB_CMD_CEQ_ARMED ;
 int HNS_ROCE_V2_CONS_IDX_M ;
 scalar_t__ HNS_ROCE_V2_EQ_ALWAYS_ARMED ;
 int HNS_ROCE_V2_EQ_DB_CMD_M ;
 int HNS_ROCE_V2_EQ_DB_CMD_S ;
 int HNS_ROCE_V2_EQ_DB_PARA_M ;
 int HNS_ROCE_V2_EQ_DB_PARA_S ;
 int HNS_ROCE_V2_EQ_DB_TAG_M ;
 int HNS_ROCE_V2_EQ_DB_TAG_S ;
 int hns_roce_write64 (struct hns_roce_dev*,scalar_t__*,int ) ;
 int roce_set_field (scalar_t__,int ,int ,int) ;

__attribute__((used)) static void set_eq_cons_index_v2(struct hns_roce_eq *eq)
{
 struct hns_roce_dev *hr_dev = eq->hr_dev;
 __le32 doorbell[2];

 doorbell[0] = 0;
 doorbell[1] = 0;

 if (eq->type_flag == HNS_ROCE_AEQ) {
  roce_set_field(doorbell[0], HNS_ROCE_V2_EQ_DB_CMD_M,
          HNS_ROCE_V2_EQ_DB_CMD_S,
          eq->arm_st == HNS_ROCE_V2_EQ_ALWAYS_ARMED ?
          HNS_ROCE_EQ_DB_CMD_AEQ :
          HNS_ROCE_EQ_DB_CMD_AEQ_ARMED);
 } else {
  roce_set_field(doorbell[0], HNS_ROCE_V2_EQ_DB_TAG_M,
          HNS_ROCE_V2_EQ_DB_TAG_S, eq->eqn);

  roce_set_field(doorbell[0], HNS_ROCE_V2_EQ_DB_CMD_M,
          HNS_ROCE_V2_EQ_DB_CMD_S,
          eq->arm_st == HNS_ROCE_V2_EQ_ALWAYS_ARMED ?
          HNS_ROCE_EQ_DB_CMD_CEQ :
          HNS_ROCE_EQ_DB_CMD_CEQ_ARMED);
 }

 roce_set_field(doorbell[1], HNS_ROCE_V2_EQ_DB_PARA_M,
         HNS_ROCE_V2_EQ_DB_PARA_S,
         (eq->cons_index & HNS_ROCE_V2_CONS_IDX_M));

 hns_roce_write64(hr_dev, doorbell, eq->doorbell);
}
