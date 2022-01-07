
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tangox_irq_chip {int dummy; } ;
struct irq_data {int irq; int mask; } ;
struct irq_chip_regs {scalar_t__ type; } ;
struct irq_chip_generic {TYPE_2__* chip_types; TYPE_1__* domain; } ;
struct TYPE_4__ {struct irq_chip_regs regs; } ;
struct TYPE_3__ {struct tangox_irq_chip* host_data; } ;


 scalar_t__ EDGE_CFG_FALL_CLR ;
 scalar_t__ EDGE_CFG_FALL_SET ;
 scalar_t__ EDGE_CFG_RISE_CLR ;
 scalar_t__ EDGE_CFG_RISE_SET ;
 int EINVAL ;




 unsigned int IRQ_TYPE_SENSE_MASK ;
 int intc_writel (struct tangox_irq_chip*,scalar_t__,int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_setup_alt_chip (struct irq_data*,unsigned int) ;
 int pr_err (char*,unsigned int,int ) ;

__attribute__((used)) static int tangox_irq_set_type(struct irq_data *d, unsigned int flow_type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct tangox_irq_chip *chip = gc->domain->host_data;
 struct irq_chip_regs *regs = &gc->chip_types[0].regs;

 switch (flow_type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  intc_writel(chip, regs->type + EDGE_CFG_RISE_SET, d->mask);
  intc_writel(chip, regs->type + EDGE_CFG_FALL_CLR, d->mask);
  break;

 case 131:
  intc_writel(chip, regs->type + EDGE_CFG_RISE_CLR, d->mask);
  intc_writel(chip, regs->type + EDGE_CFG_FALL_SET, d->mask);
  break;

 case 129:
  intc_writel(chip, regs->type + EDGE_CFG_RISE_CLR, d->mask);
  intc_writel(chip, regs->type + EDGE_CFG_FALL_CLR, d->mask);
  break;

 case 128:
  intc_writel(chip, regs->type + EDGE_CFG_RISE_SET, d->mask);
  intc_writel(chip, regs->type + EDGE_CFG_FALL_SET, d->mask);
  break;

 default:
  pr_err("Invalid trigger mode %x for IRQ %d\n",
         flow_type, d->irq);
  return -EINVAL;
 }

 return irq_setup_alt_chip(d, flow_type);
}
