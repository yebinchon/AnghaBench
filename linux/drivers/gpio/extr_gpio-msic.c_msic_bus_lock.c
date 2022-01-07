
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msic_gpio {int buslock; } ;
struct irq_data {int dummy; } ;


 struct msic_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void msic_bus_lock(struct irq_data *data)
{
 struct msic_gpio *mg = irq_data_get_irq_chip_data(data);
 mutex_lock(&mg->buslock);
}
