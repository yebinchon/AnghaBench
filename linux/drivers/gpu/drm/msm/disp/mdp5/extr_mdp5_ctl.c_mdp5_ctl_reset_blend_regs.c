
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl_manager {int nlm; } ;
struct mdp5_ctl {int hw_lock; int id; struct mdp5_ctl_manager* ctlm; } ;


 int REG_MDP5_CTL_LAYER_EXT_REG (int ,int) ;
 int REG_MDP5_CTL_LAYER_REG (int ,int) ;
 int ctl_write (struct mdp5_ctl*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mdp5_ctl_reset_blend_regs(struct mdp5_ctl *ctl)
{
 unsigned long flags;
 struct mdp5_ctl_manager *ctl_mgr = ctl->ctlm;
 int i;

 spin_lock_irqsave(&ctl->hw_lock, flags);

 for (i = 0; i < ctl_mgr->nlm; i++) {
  ctl_write(ctl, REG_MDP5_CTL_LAYER_REG(ctl->id, i), 0x0);
  ctl_write(ctl, REG_MDP5_CTL_LAYER_EXT_REG(ctl->id, i), 0x0);
 }

 spin_unlock_irqrestore(&ctl->hw_lock, flags);
}
