
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct goldfish_pic_data {int irq_domain; scalar_t__ base; } ;


 scalar_t__ GFPIC_REG_IRQ_PENDING ;
 int __fls (int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct goldfish_pic_data* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_linear_revmap (int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void goldfish_pic_cascade(struct irq_desc *desc)
{
 struct goldfish_pic_data *gfpic = irq_desc_get_handler_data(desc);
 struct irq_chip *host_chip = irq_desc_get_chip(desc);
 u32 pending, hwirq, virq;

 chained_irq_enter(host_chip, desc);

 pending = readl(gfpic->base + GFPIC_REG_IRQ_PENDING);
 while (pending) {
  hwirq = __fls(pending);
  virq = irq_linear_revmap(gfpic->irq_domain, hwirq);
  generic_handle_irq(virq);
  pending &= ~(1 << hwirq);
 }

 chained_irq_exit(host_chip, desc);
}
