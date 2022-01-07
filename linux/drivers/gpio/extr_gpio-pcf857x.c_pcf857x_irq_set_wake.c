
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf857x {TYPE_1__* client; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 struct pcf857x* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int pcf857x_irq_set_wake(struct irq_data *data, unsigned int on)
{
 struct pcf857x *gpio = irq_data_get_irq_chip_data(data);

 return irq_set_irq_wake(gpio->client->irq, on);
}
