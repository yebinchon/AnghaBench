
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;
struct fpga_irq_data {int domain; scalar_t__ base; } ;


 scalar_t__ IRQ_STATUS ;
 int do_bad_IRQ (struct irq_desc*) ;
 int ffs (int) ;
 int generic_handle_irq (int ) ;
 struct fpga_irq_data* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,unsigned int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void fpga_irq_handle(struct irq_desc *desc)
{
 struct fpga_irq_data *f = irq_desc_get_handler_data(desc);
 u32 status = readl(f->base + IRQ_STATUS);

 if (status == 0) {
  do_bad_IRQ(desc);
  return;
 }

 do {
  unsigned int irq = ffs(status) - 1;

  status &= ~(1 << irq);
  generic_handle_irq(irq_find_mapping(f->domain, irq));
 } while (status);
}
