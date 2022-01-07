
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_gc_mask_disable_reg (struct irq_data*) ;
 int omap_ack_irq (struct irq_data*) ;

__attribute__((used)) static void omap_mask_ack_irq(struct irq_data *d)
{
 irq_gc_mask_disable_reg(d);
 omap_ack_irq(d);
}
