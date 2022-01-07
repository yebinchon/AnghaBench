
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct hns_roce_cmdq {size_t free_head; int context_lock; struct hns_roce_cmd_context* context; scalar_t__ token_mask; } ;
struct hns_roce_dev {struct device* dev; struct hns_roce_cmdq cmd; } ;
struct hns_roce_cmd_context {size_t next; int result; int done; int token; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 int hns_roce_cmd_mbox_post_hw (struct hns_roce_dev*,int ,int ,unsigned long,int ,int ,int ,int) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int __hns_roce_cmd_mbox_wait(struct hns_roce_dev *hr_dev, u64 in_param,
        u64 out_param, unsigned long in_modifier,
        u8 op_modifier, u16 op,
        unsigned long timeout)
{
 struct hns_roce_cmdq *cmd = &hr_dev->cmd;
 struct hns_roce_cmd_context *context;
 struct device *dev = hr_dev->dev;
 int ret;

 spin_lock(&cmd->context_lock);
 WARN_ON(cmd->free_head < 0);
 context = &cmd->context[cmd->free_head];
 context->token += cmd->token_mask + 1;
 cmd->free_head = context->next;
 spin_unlock(&cmd->context_lock);

 init_completion(&context->done);

 ret = hns_roce_cmd_mbox_post_hw(hr_dev, in_param, out_param,
     in_modifier, op_modifier, op,
     context->token, 1);
 if (ret)
  goto out;






 if (!wait_for_completion_timeout(&context->done,
      msecs_to_jiffies(timeout))) {
  dev_err(dev, "[cmd]wait_for_completion_timeout timeout\n");
  ret = -EBUSY;
  goto out;
 }

 ret = context->result;
 if (ret) {
  dev_err(dev, "[cmd]event mod cmd process error!err=%d\n", ret);
  goto out;
 }

out:
 spin_lock(&cmd->context_lock);
 context->next = cmd->free_head;
 cmd->free_head = context - cmd->context;
 spin_unlock(&cmd->context_lock);

 return ret;
}
