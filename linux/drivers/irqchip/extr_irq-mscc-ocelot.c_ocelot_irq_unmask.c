
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_data {unsigned int mask; } ;
struct irq_chip_type {unsigned int* mask_cache; } ;
struct irq_chip_generic {int dummy; } ;


 int ICPU_CFG_INTR_INTR_ENA_SET ;
 int ICPU_CFG_INTR_INTR_STICKY ;
 int ICPU_CFG_INTR_INTR_TRIGGER (int) ;
 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 unsigned int irq_reg_readl (struct irq_chip_generic*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,unsigned int,int ) ;

__attribute__((used)) static void ocelot_irq_unmask(struct irq_data *data)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
 struct irq_chip_type *ct = irq_data_get_chip_type(data);
 unsigned int mask = data->mask;
 u32 val;

 irq_gc_lock(gc);
 val = irq_reg_readl(gc, ICPU_CFG_INTR_INTR_TRIGGER(0)) |
       irq_reg_readl(gc, ICPU_CFG_INTR_INTR_TRIGGER(1));
 if (!(val & mask))
  irq_reg_writel(gc, mask, ICPU_CFG_INTR_INTR_STICKY);

 *ct->mask_cache &= ~mask;
 irq_reg_writel(gc, mask, ICPU_CFG_INTR_INTR_ENA_SET);
 irq_gc_unlock(gc);
}
