
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_exti_chip_data {int dummy; } ;
struct irq_chip_generic {int mask_cache; struct stm32_exti_chip_data* private; } ;


 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int stm32_chip_resume (struct stm32_exti_chip_data*,int ) ;

__attribute__((used)) static void stm32_irq_resume(struct irq_chip_generic *gc)
{
 struct stm32_exti_chip_data *chip_data = gc->private;

 irq_gc_lock(gc);
 stm32_chip_resume(chip_data, gc->mask_cache);
 irq_gc_unlock(gc);
}
