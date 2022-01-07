
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ingenic_intc_data {unsigned int num_chips; scalar_t__ base; } ;
typedef int irqreturn_t ;


 unsigned int CHIP_SIZE ;
 int IRQ_HANDLED ;
 scalar_t__ JZ4740_IRQ_BASE ;
 scalar_t__ JZ_REG_INTC_PENDING ;
 scalar_t__ __fls (int ) ;
 int generic_handle_irq (scalar_t__) ;
 struct ingenic_intc_data* irq_get_handler_data (int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t intc_cascade(int irq, void *data)
{
 struct ingenic_intc_data *intc = irq_get_handler_data(irq);
 uint32_t irq_reg;
 unsigned i;

 for (i = 0; i < intc->num_chips; i++) {
  irq_reg = readl(intc->base + (i * CHIP_SIZE) +
    JZ_REG_INTC_PENDING);
  if (!irq_reg)
   continue;

  generic_handle_irq(__fls(irq_reg) + (i * 32) + JZ4740_IRQ_BASE);
 }

 return IRQ_HANDLED;
}
