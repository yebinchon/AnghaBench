
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_irq_intc {int domain; struct s3c_irq_data* irqs; int reg_mask; struct s3c_irq_intc* parent; } ;
struct s3c_irq_data {unsigned long offset; size_t parent_irq; unsigned long sub_bits; struct s3c_irq_intc* intc; } ;
struct irq_data {int dummy; } ;


 struct s3c_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irq_find_mapping (int ,size_t) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 unsigned long readl_relaxed (int ) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static void s3c_irq_mask(struct irq_data *data)
{
 struct s3c_irq_data *irq_data = irq_data_get_irq_chip_data(data);
 struct s3c_irq_intc *intc = irq_data->intc;
 struct s3c_irq_intc *parent_intc = intc->parent;
 struct s3c_irq_data *parent_data;
 unsigned long mask;
 unsigned int irqno;

 mask = readl_relaxed(intc->reg_mask);
 mask |= (1UL << irq_data->offset);
 writel_relaxed(mask, intc->reg_mask);

 if (parent_intc) {
  parent_data = &parent_intc->irqs[irq_data->parent_irq];





  if ((mask & parent_data->sub_bits) == parent_data->sub_bits) {
   irqno = irq_find_mapping(parent_intc->domain,
      irq_data->parent_irq);
   s3c_irq_mask(irq_get_irq_data(irqno));
  }
 }
}
