
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vic_device {int domain; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 scalar_t__ VIC_IRQ_STATUS ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 scalar_t__ ffs (scalar_t__) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct vic_device* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,scalar_t__) ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static void vic_handle_irq_cascaded(struct irq_desc *desc)
{
 u32 stat, hwirq;
 struct irq_chip *host_chip = irq_desc_get_chip(desc);
 struct vic_device *vic = irq_desc_get_handler_data(desc);

 chained_irq_enter(host_chip, desc);

 while ((stat = readl_relaxed(vic->base + VIC_IRQ_STATUS))) {
  hwirq = ffs(stat) - 1;
  generic_handle_irq(irq_find_mapping(vic->domain, hwirq));
 }

 chained_irq_exit(host_chip, desc);
}
