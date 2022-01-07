
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_pipeline {int dummy; } ;
struct mdp5_ctl_manager {int flush_hw_mask; } ;
struct mdp5_ctl {int id; int pending_ctl_trigger; int flush_mask; int hw_lock; struct mdp5_ctl_manager* ctlm; } ;


 int MDP5_CTL_FLUSH_CTL ;
 int REG_MDP5_CTL_FLUSH (int) ;
 int VERB (char*,int,int) ;
 int ctl_write (struct mdp5_ctl*,int ,int) ;
 int fix_for_single_flush (struct mdp5_ctl*,int*,int*) ;
 int fix_sw_flush (struct mdp5_ctl*,struct mdp5_pipeline*,int) ;
 int send_start_signal (struct mdp5_ctl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ start_signal_needed (struct mdp5_ctl*,struct mdp5_pipeline*) ;

u32 mdp5_ctl_commit(struct mdp5_ctl *ctl,
      struct mdp5_pipeline *pipeline,
      u32 flush_mask, bool start)
{
 struct mdp5_ctl_manager *ctl_mgr = ctl->ctlm;
 unsigned long flags;
 u32 flush_id = ctl->id;
 u32 curr_ctl_flush_mask;

 VERB("flush_mask=%x, trigger=%x", flush_mask, ctl->pending_ctl_trigger);

 if (ctl->pending_ctl_trigger & flush_mask) {
  flush_mask |= MDP5_CTL_FLUSH_CTL;
  ctl->pending_ctl_trigger = 0;
 }

 flush_mask |= fix_sw_flush(ctl, pipeline, flush_mask);

 flush_mask &= ctl_mgr->flush_hw_mask;

 curr_ctl_flush_mask = flush_mask;

 fix_for_single_flush(ctl, &flush_mask, &flush_id);

 if (!start) {
  ctl->flush_mask |= flush_mask;
  return curr_ctl_flush_mask;
 } else {
  flush_mask |= ctl->flush_mask;
  ctl->flush_mask = 0;
 }

 if (flush_mask) {
  spin_lock_irqsave(&ctl->hw_lock, flags);
  ctl_write(ctl, REG_MDP5_CTL_FLUSH(flush_id), flush_mask);
  spin_unlock_irqrestore(&ctl->hw_lock, flags);
 }

 if (start_signal_needed(ctl, pipeline)) {
  send_start_signal(ctl);
 }

 return curr_ctl_flush_mask;
}
