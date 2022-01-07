
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_priv {int hwirq; int lock; } ;


 int BIT (int) ;
 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ts5500_set_mask (int ,int) ;

__attribute__((used)) static int ts5500_enable_irq(struct ts5500_priv *priv)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->hwirq == 7)
  ts5500_set_mask(BIT(7), 0x7a);
 else if (priv->hwirq == 6)
  ts5500_set_mask(BIT(7), 0x7d);
 else if (priv->hwirq == 1)
  ts5500_set_mask(BIT(6), 0x7d);
 else
  ret = -EINVAL;
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
