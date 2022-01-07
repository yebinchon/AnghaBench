
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int irq; } ;
struct irq_chip_generic {struct ioh_gpio* private; } ;
struct ioh_gpio {size_t ch; int irq_base; int spinlock; TYPE_2__* reg; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int ien; } ;


 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ioh_irq_enable(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct ioh_gpio *chip = gc->private;
 unsigned long flags;
 u32 ien;

 spin_lock_irqsave(&chip->spinlock, flags);
 ien = ioread32(&chip->reg->regs[chip->ch].ien);
 ien |= 1 << (d->irq - chip->irq_base);
 iowrite32(ien, &chip->reg->regs[chip->ch].ien);
 spin_unlock_irqrestore(&chip->spinlock, flags);
}
