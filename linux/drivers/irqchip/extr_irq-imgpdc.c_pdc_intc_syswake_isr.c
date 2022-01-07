
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {int nr_syswakes; int domain; } ;
struct irq_desc {int dummy; } ;


 int PDC_IRQ_ENABLE ;
 int PDC_IRQ_STATUS ;
 int generic_handle_irq (unsigned int) ;
 scalar_t__ irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,int ) ;
 unsigned int pdc_read (struct pdc_intc_priv*,int ) ;
 int syswake_to_hwirq (unsigned int) ;

__attribute__((used)) static void pdc_intc_syswake_isr(struct irq_desc *desc)
{
 struct pdc_intc_priv *priv;
 unsigned int syswake, irq_no;
 unsigned int status;

 priv = (struct pdc_intc_priv *)irq_desc_get_handler_data(desc);

 status = pdc_read(priv, PDC_IRQ_STATUS) &
   pdc_read(priv, PDC_IRQ_ENABLE);
 status &= (1 << priv->nr_syswakes) - 1;

 for (syswake = 0; status; status >>= 1, ++syswake) {

  if (!(status & 1))
   continue;

  irq_no = irq_linear_revmap(priv->domain,
        syswake_to_hwirq(syswake));
  generic_handle_irq(irq_no);
 }
}
