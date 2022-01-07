
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct ts5500_priv {int hwirq; int lock; TYPE_1__ gpio_chip; } ;


 int BIT (int) ;
 int dev_err (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ts5500_clear_mask (int ,int) ;

__attribute__((used)) static void ts5500_disable_irq(struct ts5500_priv *priv)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->hwirq == 7)
  ts5500_clear_mask(BIT(7), 0x7a);
 else if (priv->hwirq == 6)
  ts5500_clear_mask(BIT(7), 0x7d);
 else if (priv->hwirq == 1)
  ts5500_clear_mask(BIT(6), 0x7d);
 else
  dev_err(priv->gpio_chip.parent, "invalid hwirq %d\n",
   priv->hwirq);
 spin_unlock_irqrestore(&priv->lock, flags);
}
