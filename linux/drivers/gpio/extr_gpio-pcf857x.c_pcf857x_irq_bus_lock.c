
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf857x {int lock; } ;
struct irq_data {int dummy; } ;


 struct pcf857x* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void pcf857x_irq_bus_lock(struct irq_data *data)
{
 struct pcf857x *gpio = irq_data_get_irq_chip_data(data);

 mutex_lock(&gpio->lock);
}
