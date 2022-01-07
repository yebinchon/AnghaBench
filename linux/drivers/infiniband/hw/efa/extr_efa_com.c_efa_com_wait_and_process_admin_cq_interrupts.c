
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efa_comp_ctx {scalar_t__ status; int comp_status; int cmd_opcode; int wait_event; } ;
struct TYPE_6__ {int cc; int lock; } ;
struct TYPE_5__ {int cc; int pc; } ;
struct TYPE_4__ {int no_completion; } ;
struct efa_com_admin_queue {int state; TYPE_3__ cq; TYPE_2__ sq; int efa_dev; TYPE_1__ stats; int completion_timeout; } ;


 int EFA_AQ_STATE_RUNNING_BIT ;
 scalar_t__ EFA_CMD_COMPLETED ;
 scalar_t__ EFA_CMD_SUBMITTED ;
 int ETIME ;
 int atomic64_inc (int *) ;
 int clear_bit (int ,int *) ;
 int efa_com_cmd_str (int ) ;
 int efa_com_comp_status_to_errno (int ) ;
 int efa_com_handle_admin_completion (struct efa_com_admin_queue*) ;
 int efa_com_put_comp_ctx (struct efa_com_admin_queue*,struct efa_comp_ctx*) ;
 int ibdev_err_ratelimited (int ,char*,int ,int ,scalar_t__,struct efa_comp_ctx*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int efa_com_wait_and_process_admin_cq_interrupts(struct efa_comp_ctx *comp_ctx,
       struct efa_com_admin_queue *aq)
{
 unsigned long flags;
 int err;

 wait_for_completion_timeout(&comp_ctx->wait_event,
        usecs_to_jiffies(aq->completion_timeout));







 if (comp_ctx->status == EFA_CMD_SUBMITTED) {
  spin_lock_irqsave(&aq->cq.lock, flags);
  efa_com_handle_admin_completion(aq);
  spin_unlock_irqrestore(&aq->cq.lock, flags);

  atomic64_inc(&aq->stats.no_completion);

  if (comp_ctx->status == EFA_CMD_COMPLETED)
   ibdev_err_ratelimited(
    aq->efa_dev,
    "The device sent a completion but the driver didn't receive any MSI-X interrupt for admin cmd %s(%d) status %d (ctx: 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\n",
    efa_com_cmd_str(comp_ctx->cmd_opcode),
    comp_ctx->cmd_opcode, comp_ctx->status,
    comp_ctx, aq->sq.pc, aq->sq.cc, aq->cq.cc);
  else
   ibdev_err_ratelimited(
    aq->efa_dev,
    "The device didn't send any completion for admin cmd %s(%d) status %d (ctx 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\n",
    efa_com_cmd_str(comp_ctx->cmd_opcode),
    comp_ctx->cmd_opcode, comp_ctx->status,
    comp_ctx, aq->sq.pc, aq->sq.cc, aq->cq.cc);

  clear_bit(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
  err = -ETIME;
  goto out;
 }

 err = efa_com_comp_status_to_errno(comp_ctx->comp_status);
out:
 efa_com_put_comp_ctx(aq, comp_ctx);
 return err;
}
