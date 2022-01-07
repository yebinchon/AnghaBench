
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct crystalcove_gpio {int update; int buslock; } ;


 int UPDATE_IRQ_MASK ;
 int UPDATE_IRQ_TYPE ;
 int crystalcove_update_irq_ctrl (struct crystalcove_gpio*,int) ;
 int crystalcove_update_irq_mask (struct crystalcove_gpio*,int) ;
 struct crystalcove_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void crystalcove_bus_sync_unlock(struct irq_data *data)
{
 struct crystalcove_gpio *cg =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));
 int gpio = data->hwirq;

 if (cg->update & UPDATE_IRQ_TYPE)
  crystalcove_update_irq_ctrl(cg, gpio);
 if (cg->update & UPDATE_IRQ_MASK)
  crystalcove_update_irq_mask(cg, gpio);
 cg->update = 0;

 mutex_unlock(&cg->buslock);
}
