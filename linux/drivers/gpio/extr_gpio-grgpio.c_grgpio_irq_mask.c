
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_2__ {int bgpio_lock; } ;
struct grgpio_priv {TYPE_1__ gc; } ;


 int grgpio_set_imask (struct grgpio_priv*,int,int ) ;
 struct grgpio_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void grgpio_irq_mask(struct irq_data *d)
{
 struct grgpio_priv *priv = irq_data_get_irq_chip_data(d);
 int offset = d->hwirq;
 unsigned long flags;

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);

 grgpio_set_imask(priv, offset, 0);

 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);
}
