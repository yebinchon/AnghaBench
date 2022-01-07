
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efa_comp_ctx {scalar_t__ status; int comp_status; } ;
struct TYPE_4__ {int no_completion; } ;
struct TYPE_3__ {int lock; } ;
struct efa_com_admin_queue {int poll_interval; int state; TYPE_2__ stats; int efa_dev; TYPE_1__ cq; int completion_timeout; } ;


 int EFA_AQ_STATE_RUNNING_BIT ;
 scalar_t__ EFA_CMD_SUBMITTED ;
 int ETIME ;
 int atomic64_inc (int *) ;
 int clear_bit (int ,int *) ;
 int efa_com_comp_status_to_errno (int ) ;
 int efa_com_handle_admin_completion (struct efa_com_admin_queue*) ;
 int efa_com_put_comp_ctx (struct efa_com_admin_queue*,struct efa_comp_ctx*) ;
 int ibdev_err_ratelimited (int ,char*) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 unsigned long usecs_to_jiffies (int ) ;

__attribute__((used)) static int efa_com_wait_and_process_admin_cq_polling(struct efa_comp_ctx *comp_ctx,
           struct efa_com_admin_queue *aq)
{
 unsigned long timeout;
 unsigned long flags;
 int err;

 timeout = jiffies + usecs_to_jiffies(aq->completion_timeout);

 while (1) {
  spin_lock_irqsave(&aq->cq.lock, flags);
  efa_com_handle_admin_completion(aq);
  spin_unlock_irqrestore(&aq->cq.lock, flags);

  if (comp_ctx->status != EFA_CMD_SUBMITTED)
   break;

  if (time_is_before_jiffies(timeout)) {
   ibdev_err_ratelimited(
    aq->efa_dev,
    "Wait for completion (polling) timeout\n");

   atomic64_inc(&aq->stats.no_completion);

   clear_bit(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
   err = -ETIME;
   goto out;
  }

  msleep(aq->poll_interval);
 }

 err = efa_com_comp_status_to_errno(comp_ctx->comp_status);
out:
 efa_com_put_comp_ctx(aq, comp_ctx);
 return err;
}
