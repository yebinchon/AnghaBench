
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct irq_chip_generic {struct ioh_gpio* private; } ;
struct ioh_gpio {int irq_base; size_t ch; TYPE_2__* reg; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int imaskclr; } ;


 int iowrite32 (int,int *) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ioh_irq_unmask(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct ioh_gpio *chip = gc->private;

 iowrite32(1 << (d->irq - chip->irq_base),
    &chip->reg->regs[chip->ch].imaskclr);
}
