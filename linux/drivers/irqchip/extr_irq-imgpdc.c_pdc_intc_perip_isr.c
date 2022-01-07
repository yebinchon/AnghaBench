
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {unsigned int nr_perips; unsigned int* perip_irqs; int domain; } ;
struct irq_desc {int dummy; } ;


 int generic_handle_irq (unsigned int) ;
 scalar_t__ irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,unsigned int) ;

__attribute__((used)) static void pdc_intc_perip_isr(struct irq_desc *desc)
{
 unsigned int irq = irq_desc_get_irq(desc);
 struct pdc_intc_priv *priv;
 unsigned int i, irq_no;

 priv = (struct pdc_intc_priv *)irq_desc_get_handler_data(desc);


 for (i = 0; i < priv->nr_perips; ++i)
  if (irq == priv->perip_irqs[i])
   goto found;


 return;
found:


 irq_no = irq_linear_revmap(priv->domain, i);
 generic_handle_irq(irq_no);
}
