
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_exti_chip_data {struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {scalar_t__ rpr_ofst; scalar_t__ fpr_ofst; } ;
struct irq_data {int mask; } ;
struct irq_chip_generic {struct stm32_exti_chip_data* private; } ;


 scalar_t__ UNDEF_REG ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_writel (struct irq_chip_generic*,int ,scalar_t__) ;

__attribute__((used)) static void stm32_irq_ack(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct stm32_exti_chip_data *chip_data = gc->private;
 const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;

 irq_gc_lock(gc);

 irq_reg_writel(gc, d->mask, stm32_bank->rpr_ofst);
 if (stm32_bank->fpr_ofst != UNDEF_REG)
  irq_reg_writel(gc, d->mask, stm32_bank->fpr_ofst);

 irq_gc_unlock(gc);
}
