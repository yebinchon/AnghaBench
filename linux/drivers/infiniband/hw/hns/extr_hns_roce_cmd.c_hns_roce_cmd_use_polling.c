
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_cmdq {scalar_t__ use_events; int context; } ;
struct hns_roce_dev {struct hns_roce_cmdq cmd; } ;


 int kfree (int ) ;

void hns_roce_cmd_use_polling(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cmdq *hr_cmd = &hr_dev->cmd;

 kfree(hr_cmd->context);
 hr_cmd->use_events = 0;
}
