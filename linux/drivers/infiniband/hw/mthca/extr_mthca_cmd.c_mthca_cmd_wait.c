
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {size_t free_head; int event_sem; int context_lock; struct mthca_cmd_context* context; scalar_t__ token_mask; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
struct mthca_cmd_context {size_t next; int result; int out_param; scalar_t__ status; int done; int token; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int down (int *) ;
 int init_completion (int *) ;
 int mthca_cmd_post (struct mthca_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mthca_dbg (struct mthca_dev*,char*,int ,scalar_t__) ;
 int mthca_status_to_errno (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up (int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int mthca_cmd_wait(struct mthca_dev *dev,
     u64 in_param,
     u64 *out_param,
     int out_is_imm,
     u32 in_modifier,
     u8 op_modifier,
     u16 op,
     unsigned long timeout)
{
 int err = 0;
 struct mthca_cmd_context *context;

 down(&dev->cmd.event_sem);

 spin_lock(&dev->cmd.context_lock);
 BUG_ON(dev->cmd.free_head < 0);
 context = &dev->cmd.context[dev->cmd.free_head];
 context->token += dev->cmd.token_mask + 1;
 dev->cmd.free_head = context->next;
 spin_unlock(&dev->cmd.context_lock);

 init_completion(&context->done);

 err = mthca_cmd_post(dev, in_param,
        out_param ? *out_param : 0,
        in_modifier, op_modifier,
        op, context->token, 1);
 if (err)
  goto out;

 if (!wait_for_completion_timeout(&context->done, timeout)) {
  err = -EBUSY;
  goto out;
 }

 err = context->result;
 if (err)
  goto out;

 if (context->status) {
  mthca_dbg(dev, "Command %02x completed with status %02x\n",
     op, context->status);
  err = mthca_status_to_errno(context->status);
 }

 if (out_is_imm && out_param) {
  *out_param = context->out_param;
 } else if (out_is_imm) {
  err = -EINVAL;
  goto out;
 }

out:
 spin_lock(&dev->cmd.context_lock);
 context->next = dev->cmd.free_head;
 dev->cmd.free_head = context - dev->cmd.context;
 spin_unlock(&dev->cmd.context_lock);

 up(&dev->cmd.event_sem);
 return err;
}
