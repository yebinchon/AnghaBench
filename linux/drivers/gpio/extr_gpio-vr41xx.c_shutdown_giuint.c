
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int gpiochip_unlock_as_irq (int *,int ) ;
 int mask_giuint_low (struct irq_data*) ;
 int vr41xx_gpio_chip ;

__attribute__((used)) static void shutdown_giuint(struct irq_data *data)
{
 mask_giuint_low(data);
 gpiochip_unlock_as_irq(&vr41xx_gpio_chip, data->hwirq);
}
