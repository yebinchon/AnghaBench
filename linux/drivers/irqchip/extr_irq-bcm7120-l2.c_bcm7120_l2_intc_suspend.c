
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct irq_chip_type {TYPE_1__ regs; } ;
struct irq_chip_generic {int mask_cache; int wake_active; struct irq_chip_type* chip_types; struct bcm7120_l2_intc_data* private; } ;
struct bcm7120_l2_intc_data {scalar_t__ can_wake; } ;


 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_writel (struct irq_chip_generic*,int,int ) ;

__attribute__((used)) static void bcm7120_l2_intc_suspend(struct irq_chip_generic *gc)
{
 struct bcm7120_l2_intc_data *b = gc->private;
 struct irq_chip_type *ct = gc->chip_types;

 irq_gc_lock(gc);
 if (b->can_wake)
  irq_reg_writel(gc, gc->mask_cache | gc->wake_active,
          ct->regs.mask);
 irq_gc_unlock(gc);
}
