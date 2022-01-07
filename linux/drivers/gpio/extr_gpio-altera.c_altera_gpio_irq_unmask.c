
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct irq_data {int dummy; } ;
struct altera_gpio_chip {int gpio_lock; struct of_mm_gpio_chip mmchip; } ;


 scalar_t__ ALTERA_GPIO_IRQ_MASK ;
 int BIT (int ) ;
 struct altera_gpio_chip* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altera_gpio_irq_unmask(struct irq_data *d)
{
 struct altera_gpio_chip *altera_gc;
 struct of_mm_gpio_chip *mm_gc;
 unsigned long flags;
 u32 intmask;

 altera_gc = gpiochip_get_data(irq_data_get_irq_chip_data(d));
 mm_gc = &altera_gc->mmchip;

 raw_spin_lock_irqsave(&altera_gc->gpio_lock, flags);
 intmask = readl(mm_gc->regs + ALTERA_GPIO_IRQ_MASK);

 intmask |= BIT(irqd_to_hwirq(d));
 writel(intmask, mm_gc->regs + ALTERA_GPIO_IRQ_MASK);
 raw_spin_unlock_irqrestore(&altera_gc->gpio_lock, flags);
}
