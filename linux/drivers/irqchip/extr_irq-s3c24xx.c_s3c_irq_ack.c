
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_irq_intc {scalar_t__ reg_intpnd; scalar_t__ reg_pending; } ;
struct s3c_irq_data {unsigned long offset; struct s3c_irq_intc* intc; } ;
struct irq_data {int dummy; } ;


 struct s3c_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void s3c_irq_ack(struct irq_data *data)
{
 struct s3c_irq_data *irq_data = irq_data_get_irq_chip_data(data);
 struct s3c_irq_intc *intc = irq_data->intc;
 unsigned long bitval = 1UL << irq_data->offset;

 writel_relaxed(bitval, intc->reg_pending);
 if (intc->reg_intpnd)
  writel_relaxed(bitval, intc->reg_intpnd);
}
