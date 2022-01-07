
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_shirq {int mask; int offset; scalar_t__ virq_base; scalar_t__ status_reg; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;


 int __ffs (int) ;
 int generic_handle_irq (scalar_t__) ;
 struct spear_shirq* irq_desc_get_handler_data (struct irq_desc*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void shirq_handler(struct irq_desc *desc)
{
 struct spear_shirq *shirq = irq_desc_get_handler_data(desc);
 u32 pend;

 pend = readl(shirq->base + shirq->status_reg) & shirq->mask;
 pend >>= shirq->offset;

 while (pend) {
  int irq = __ffs(pend);

  pend &= ~(0x1 << irq);
  generic_handle_irq(shirq->virq_base + irq);
 }
}
