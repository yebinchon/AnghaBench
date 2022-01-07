
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct irq_data {int mask; } ;
struct TYPE_2__ {int disable; } ;
struct irq_chip_type {int * mask_cache; TYPE_1__ regs; } ;
struct irq_chip_generic {struct regmap* private; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void ingenic_tcu_gc_mask_disable_reg(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = irq_data_get_chip_type(d);
 struct regmap *map = gc->private;
 u32 mask = d->mask;

 irq_gc_lock(gc);
 regmap_write(map, ct->regs.disable, mask);
 *ct->mask_cache &= ~mask;
 irq_gc_unlock(gc);
}
