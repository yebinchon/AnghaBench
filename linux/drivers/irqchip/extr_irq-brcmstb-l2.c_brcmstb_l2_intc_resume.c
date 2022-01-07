
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_3__ {int enable; int disable; int ack; } ;
struct TYPE_4__ {scalar_t__ irq_ack; } ;
struct irq_chip_type {TYPE_1__ regs; TYPE_2__ chip; } ;
struct irq_chip_generic {int wake_active; struct brcmstb_l2_intc_data* private; } ;
struct brcmstb_l2_intc_data {int saved_mask; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock_irqsave (struct irq_chip_generic*,unsigned long) ;
 int irq_gc_unlock_irqrestore (struct irq_chip_generic*,unsigned long) ;
 int irq_reg_writel (struct irq_chip_generic*,int,int ) ;

__attribute__((used)) static void brcmstb_l2_intc_resume(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = irq_data_get_chip_type(d);
 struct brcmstb_l2_intc_data *b = gc->private;
 unsigned long flags;

 irq_gc_lock_irqsave(gc, flags);
 if (ct->chip.irq_ack) {

  irq_reg_writel(gc, ~b->saved_mask & ~gc->wake_active,
    ct->regs.ack);
 }


 irq_reg_writel(gc, b->saved_mask, ct->regs.disable);
 irq_reg_writel(gc, ~b->saved_mask, ct->regs.enable);
 irq_gc_unlock_irqrestore(gc, flags);
}
