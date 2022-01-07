
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp_kms {int vblank_mask; } ;


 int list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_irq (struct mdp_kms*) ;

void mdp_update_vblank_mask(struct mdp_kms *mdp_kms, uint32_t mask, bool enable)
{
 unsigned long flags;

 spin_lock_irqsave(&list_lock, flags);
 if (enable)
  mdp_kms->vblank_mask |= mask;
 else
  mdp_kms->vblank_mask &= ~mask;
 update_irq(mdp_kms);
 spin_unlock_irqrestore(&list_lock, flags);
}
