
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {struct grgpio_priv* host_data; } ;
struct grgpio_uirq {scalar_t__ refcnt; int uirq; } ;
struct TYPE_2__ {int bgpio_lock; } ;
struct grgpio_priv {TYPE_1__ gc; int dev; struct grgpio_uirq* uirqs; struct grgpio_lirq* lirqs; } ;
struct grgpio_lirq {size_t index; unsigned int irq; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int ) ;
 int dev_name (int ) ;
 int grgpio_irq_chip ;
 int grgpio_irq_handler ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct grgpio_priv*) ;
 int irq_set_noprobe (unsigned int) ;
 int request_irq (int ,int ,int ,int ,struct grgpio_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grgpio_irq_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hwirq)
{
 struct grgpio_priv *priv = d->host_data;
 struct grgpio_lirq *lirq;
 struct grgpio_uirq *uirq;
 unsigned long flags;
 int offset = hwirq;
 int ret = 0;

 if (!priv)
  return -EINVAL;

 lirq = &priv->lirqs[offset];
 if (lirq->index < 0)
  return -EINVAL;

 dev_dbg(priv->dev, "Mapping irq %d for gpio line %d\n",
  irq, offset);

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);


 lirq->irq = irq;
 uirq = &priv->uirqs[lirq->index];
 if (uirq->refcnt == 0) {
  ret = request_irq(uirq->uirq, grgpio_irq_handler, 0,
      dev_name(priv->dev), priv);
  if (ret) {
   dev_err(priv->dev,
    "Could not request underlying irq %d\n",
    uirq->uirq);

   spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);

   return ret;
  }
 }
 uirq->refcnt++;

 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);


 irq_set_chip_data(irq, priv);
 irq_set_chip_and_handler(irq, &grgpio_irq_chip,
     handle_simple_irq);
 irq_set_noprobe(irq);

 return ret;
}
