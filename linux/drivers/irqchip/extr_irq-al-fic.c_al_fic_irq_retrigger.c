
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct irq_chip_generic {struct al_fic* private; } ;
struct al_fic {scalar_t__ base; } ;


 scalar_t__ AL_FIC_SET_CAUSE ;
 int BIT (int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int al_fic_irq_retrigger(struct irq_data *data)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
 struct al_fic *fic = gc->private;

 writel_relaxed(BIT(data->hwirq), fic->base + AL_FIC_SET_CAUSE);

 return 1;
}
