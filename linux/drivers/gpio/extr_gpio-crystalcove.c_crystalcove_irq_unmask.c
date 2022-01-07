
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;
struct crystalcove_gpio {int set_irq_mask; int update; } ;


 scalar_t__ CRYSTALCOVE_GPIO_NUM ;
 int UPDATE_IRQ_MASK ;
 struct crystalcove_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void crystalcove_irq_unmask(struct irq_data *data)
{
 struct crystalcove_gpio *cg =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));

 if (data->hwirq < CRYSTALCOVE_GPIO_NUM) {
  cg->set_irq_mask = 0;
  cg->update |= UPDATE_IRQ_MASK;
 }
}
