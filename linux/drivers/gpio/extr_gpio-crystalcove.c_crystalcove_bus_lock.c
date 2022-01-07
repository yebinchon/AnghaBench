
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct crystalcove_gpio {int buslock; } ;


 struct crystalcove_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void crystalcove_bus_lock(struct irq_data *data)
{
 struct crystalcove_gpio *cg =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));

 mutex_lock(&cg->buslock);
}
