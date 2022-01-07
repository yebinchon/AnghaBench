
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timbgpio {int irq_base; unsigned long last_ier; int lock; scalar_t__ membase; } ;
struct irq_data {int irq; } ;


 scalar_t__ TGPIO_IER ;
 int iowrite32 (unsigned long,scalar_t__) ;
 struct timbgpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void timbgpio_irq_enable(struct irq_data *d)
{
 struct timbgpio *tgpio = irq_data_get_irq_chip_data(d);
 int offset = d->irq - tgpio->irq_base;
 unsigned long flags;

 spin_lock_irqsave(&tgpio->lock, flags);
 tgpio->last_ier |= 1UL << offset;
 iowrite32(tgpio->last_ier, tgpio->membase + TGPIO_IER);
 spin_unlock_irqrestore(&tgpio->lock, flags);
}
