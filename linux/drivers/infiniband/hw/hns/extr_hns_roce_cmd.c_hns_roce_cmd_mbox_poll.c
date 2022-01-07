
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_2__ {int poll_sem; } ;
struct hns_roce_dev {TYPE_1__ cmd; } ;


 int __hns_roce_cmd_mbox_poll (struct hns_roce_dev*,int ,int ,unsigned long,int ,int ,unsigned long) ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int hns_roce_cmd_mbox_poll(struct hns_roce_dev *hr_dev, u64 in_param,
      u64 out_param, unsigned long in_modifier,
      u8 op_modifier, u16 op, unsigned long timeout)
{
 int ret;

 down(&hr_dev->cmd.poll_sem);
 ret = __hns_roce_cmd_mbox_poll(hr_dev, in_param, out_param, in_modifier,
           op_modifier, op, timeout);
 up(&hr_dev->cmd.poll_sem);

 return ret;
}
