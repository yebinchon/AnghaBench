
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_private {int waiter_lock; int irq_mask; } ;


 int SVGA_REG_IRQMASK ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vmw_write (struct vmw_private*,int ,int ) ;

void vmw_generic_waiter_remove(struct vmw_private *dev_priv,
          u32 flag, int *waiter_count)
{
 spin_lock_bh(&dev_priv->waiter_lock);
 if (--(*waiter_count) == 0) {
  dev_priv->irq_mask &= ~flag;
  vmw_write(dev_priv, SVGA_REG_IRQMASK, dev_priv->irq_mask);
 }
 spin_unlock_bh(&dev_priv->waiter_lock);
}
