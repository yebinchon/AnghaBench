
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int mask; } ;
struct irq_chip_generic {int dummy; } ;


 int EINVAL ;




 int LS_REG_INTC_EDGE ;
 int LS_REG_INTC_POL ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_setup_alt_chip (struct irq_data*,unsigned int) ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 int ls_intc_set_bit (struct irq_chip_generic*,int ,int ,int) ;

__attribute__((used)) static int ls_intc_set_type(struct irq_data *data, unsigned int type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
 u32 mask = data->mask;

 switch (type) {
 case 129:
  ls_intc_set_bit(gc, LS_REG_INTC_EDGE, mask, 0);
  ls_intc_set_bit(gc, LS_REG_INTC_POL, mask, 1);
  break;
 case 128:
  ls_intc_set_bit(gc, LS_REG_INTC_EDGE, mask, 0);
  ls_intc_set_bit(gc, LS_REG_INTC_POL, mask, 0);
  break;
 case 130:
  ls_intc_set_bit(gc, LS_REG_INTC_EDGE, mask, 1);
  ls_intc_set_bit(gc, LS_REG_INTC_POL, mask, 1);
  break;
 case 131:
  ls_intc_set_bit(gc, LS_REG_INTC_EDGE, mask, 1);
  ls_intc_set_bit(gc, LS_REG_INTC_POL, mask, 0);
  break;
 default:
  return -EINVAL;
 }

 irqd_set_trigger_type(data, type);
 return irq_setup_alt_chip(data, type);
}
