
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {struct grgpio_priv* host_data; } ;
struct grgpio_uirq {scalar_t__ refcnt; int uirq; } ;
struct TYPE_2__ {int ngpio; int bgpio_lock; } ;
struct grgpio_priv {TYPE_1__ gc; struct grgpio_uirq* uirqs; struct grgpio_lirq* lirqs; } ;
struct grgpio_lirq {unsigned int irq; int index; } ;


 int WARN_ON (int) ;
 int free_irq (int ,struct grgpio_priv*) ;
 int grgpio_set_imask (struct grgpio_priv*,int,int ) ;
 int irq_set_chip_and_handler (unsigned int,int *,int *) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void grgpio_irq_unmap(struct irq_domain *d, unsigned int irq)
{
 struct grgpio_priv *priv = d->host_data;
 int index;
 struct grgpio_lirq *lirq;
 struct grgpio_uirq *uirq;
 unsigned long flags;
 int ngpio = priv->gc.ngpio;
 int i;

 irq_set_chip_and_handler(irq, ((void*)0), ((void*)0));
 irq_set_chip_data(irq, ((void*)0));

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);


 index = -1;
 for (i = 0; i < ngpio; i++) {
  lirq = &priv->lirqs[i];
  if (lirq->irq == irq) {
   grgpio_set_imask(priv, i, 0);
   lirq->irq = 0;
   index = lirq->index;
   break;
  }
 }
 WARN_ON(index < 0);

 if (index >= 0) {
  uirq = &priv->uirqs[lirq->index];
  uirq->refcnt--;
  if (uirq->refcnt == 0)
   free_irq(uirq->uirq, priv);
 }

 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);
}
