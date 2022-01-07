
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl_manager {int nctl; struct mdp5_ctl* ctls; } ;
struct mdp5_ctl {int hw_lock; int id; } ;


 int REG_MDP5_CTL_OP (int ) ;
 int ctl_write (struct mdp5_ctl*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mdp5_ctlm_hw_reset(struct mdp5_ctl_manager *ctl_mgr)
{
 unsigned long flags;
 int c;

 for (c = 0; c < ctl_mgr->nctl; c++) {
  struct mdp5_ctl *ctl = &ctl_mgr->ctls[c];

  spin_lock_irqsave(&ctl->hw_lock, flags);
  ctl_write(ctl, REG_MDP5_CTL_OP(ctl->id), 0);
  spin_unlock_irqrestore(&ctl->hw_lock, flags);
 }
}
