
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl {int hw_lock; int id; } ;


 int REG_MDP5_CTL_START (int ) ;
 int ctl_write (struct mdp5_ctl*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_start_signal(struct mdp5_ctl *ctl)
{
 unsigned long flags;

 spin_lock_irqsave(&ctl->hw_lock, flags);
 ctl_write(ctl, REG_MDP5_CTL_START(ctl->id), 1);
 spin_unlock_irqrestore(&ctl->hw_lock, flags);
}
