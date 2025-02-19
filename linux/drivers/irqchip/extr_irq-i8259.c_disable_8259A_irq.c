
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int I8259A_IRQ_BASE ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 unsigned int cached_irq_mask ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int i8259A_lock ;
 int outb (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void disable_8259A_irq(struct irq_data *d)
{
 unsigned int mask, irq = d->irq - I8259A_IRQ_BASE;
 unsigned long flags;

 mask = 1 << irq;
 raw_spin_lock_irqsave(&i8259A_lock, flags);
 cached_irq_mask |= mask;
 if (irq & 8)
  outb(cached_slave_mask, PIC_SLAVE_IMR);
 else
  outb(cached_master_mask, PIC_MASTER_IMR);
 raw_spin_unlock_irqrestore(&i8259A_lock, flags);
}
