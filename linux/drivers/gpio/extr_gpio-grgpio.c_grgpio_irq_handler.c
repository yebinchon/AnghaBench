
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ngpio; int bgpio_lock; } ;
struct grgpio_priv {int imask; int dev; TYPE_2__ gc; TYPE_1__* uirqs; struct grgpio_lirq* lirqs; } ;
struct grgpio_lirq {size_t index; int irq; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int uirq; } ;


 int BIT (int) ;
 int IRQ_HANDLED ;
 int dev_warn (int ,char*,int) ;
 int generic_handle_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t grgpio_irq_handler(int irq, void *dev)
{
 struct grgpio_priv *priv = dev;
 int ngpio = priv->gc.ngpio;
 unsigned long flags;
 int i;
 int match = 0;

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);





 for (i = 0; i < ngpio; i++) {
  struct grgpio_lirq *lirq = &priv->lirqs[i];

  if (priv->imask & BIT(i) && lirq->index >= 0 &&
      priv->uirqs[lirq->index].uirq == irq) {
   generic_handle_irq(lirq->irq);
   match = 1;
  }
 }

 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);

 if (!match)
  dev_warn(priv->dev, "No gpio line matched irq %d\n", irq);

 return IRQ_HANDLED;
}
