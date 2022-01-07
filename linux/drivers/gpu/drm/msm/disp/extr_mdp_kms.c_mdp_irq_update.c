
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_kms {int dummy; } ;


 int list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_irq (struct mdp_kms*) ;

void mdp_irq_update(struct mdp_kms *mdp_kms)
{
 unsigned long flags;
 spin_lock_irqsave(&list_lock, flags);
 update_irq(mdp_kms);
 spin_unlock_irqrestore(&list_lock, flags);
}
