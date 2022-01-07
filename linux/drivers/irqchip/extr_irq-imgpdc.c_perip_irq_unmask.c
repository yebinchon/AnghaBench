
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {int lock; int irq_route; } ;
struct irq_data {int mask; } ;


 int PDC_IRQ_ROUTE ;
 struct pdc_intc_priv* irqd_to_priv (struct irq_data*) ;
 int pdc_write (struct pdc_intc_priv*,int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void perip_irq_unmask(struct irq_data *data)
{
 struct pdc_intc_priv *priv = irqd_to_priv(data);

 raw_spin_lock(&priv->lock);
 priv->irq_route |= data->mask;
 pdc_write(priv, PDC_IRQ_ROUTE, priv->irq_route);
 raw_spin_unlock(&priv->lock);
}
