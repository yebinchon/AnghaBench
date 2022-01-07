
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 unsigned long BIT (int ) ;
 int EINVAL ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int NDS32_SR_INT_TRIGGER ;
 unsigned long __nds32__mfsr (int ) ;
 int ativic32_chip ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irqd_set_trigger_type (struct irq_data*,int ) ;

__attribute__((used)) static int ativic32_irq_domain_map(struct irq_domain *id, unsigned int virq,
      irq_hw_number_t hw)
{

 unsigned long int_trigger_type;
 u32 type;
 struct irq_data *irq_data;
 int_trigger_type = __nds32__mfsr(NDS32_SR_INT_TRIGGER);
 irq_data = irq_get_irq_data(virq);
 if (!irq_data)
  return -EINVAL;

 if (int_trigger_type & (BIT(hw))) {
  irq_set_chip_and_handler(virq, &ativic32_chip, handle_edge_irq);
  type = IRQ_TYPE_EDGE_RISING;
 } else {
  irq_set_chip_and_handler(virq, &ativic32_chip, handle_level_irq);
  type = IRQ_TYPE_LEVEL_HIGH;
 }

 irqd_set_trigger_type(irq_data, type);
 return 0;
}
