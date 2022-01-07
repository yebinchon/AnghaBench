
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int is_reset; int dis_db; } ;


 int CMD_RST_PRC_EBUSY ;
 int CMD_RST_PRC_SUCCESS ;
 unsigned long HNS_ROCE_STATE_INIT ;
 unsigned long HNS_ROCE_STATE_RST_INIT ;

__attribute__((used)) static int hns_roce_v2_cmd_hw_reseted(struct hns_roce_dev *hr_dev,
          unsigned long instance_stage,
          unsigned long reset_stage)
{
 hr_dev->is_reset = 1;
 hr_dev->dis_db = 1;

 if (reset_stage == HNS_ROCE_STATE_RST_INIT ||
     instance_stage == HNS_ROCE_STATE_INIT)
  return CMD_RST_PRC_EBUSY;

 return CMD_RST_PRC_SUCCESS;
}
