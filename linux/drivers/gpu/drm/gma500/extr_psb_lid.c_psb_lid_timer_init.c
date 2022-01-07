
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; } ;
struct drm_psb_private {int lid_lock; struct timer_list lid_timer; } ;


 scalar_t__ PSB_LID_DELAY ;
 int add_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 int psb_lid_timer_func ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (struct timer_list*,int ,int ) ;

void psb_lid_timer_init(struct drm_psb_private *dev_priv)
{
 struct timer_list *lid_timer = &dev_priv->lid_timer;
 unsigned long irq_flags;

 spin_lock_init(&dev_priv->lid_lock);
 spin_lock_irqsave(&dev_priv->lid_lock, irq_flags);

 timer_setup(lid_timer, psb_lid_timer_func, 0);

 lid_timer->expires = jiffies + PSB_LID_DELAY;

 add_timer(lid_timer);
 spin_unlock_irqrestore(&dev_priv->lid_lock, irq_flags);
}
