
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct hns_roce_cmdq {int hcr_mutex; } ;
struct hns_roce_dev {TYPE_1__* hw; struct hns_roce_cmdq cmd; } ;
struct TYPE_2__ {int (* post_mbox ) (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int hns_roce_cmd_mbox_post_hw(struct hns_roce_dev *hr_dev, u64 in_param,
         u64 out_param, u32 in_modifier,
         u8 op_modifier, u16 op, u16 token,
         int event)
{
 struct hns_roce_cmdq *cmd = &hr_dev->cmd;
 int ret;

 mutex_lock(&cmd->hcr_mutex);
 ret = hr_dev->hw->post_mbox(hr_dev, in_param, out_param, in_modifier,
        op_modifier, op, token, event);
 mutex_unlock(&cmd->hcr_mutex);

 return ret;
}
