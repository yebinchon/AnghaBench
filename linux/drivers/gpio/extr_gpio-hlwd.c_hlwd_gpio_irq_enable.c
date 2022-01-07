
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int hlwd_gpio_irq_ack (struct irq_data*) ;
 int hlwd_gpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void hlwd_gpio_irq_enable(struct irq_data *data)
{
 hlwd_gpio_irq_ack(data);
 hlwd_gpio_irq_unmask(data);
}
