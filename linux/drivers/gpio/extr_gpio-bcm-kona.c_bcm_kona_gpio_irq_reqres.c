
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct bcm_kona_gpio {int gpio_chip; } ;


 int gpiochip_reqres_irq (int *,int ) ;
 struct bcm_kona_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int bcm_kona_gpio_irq_reqres(struct irq_data *d)
{
 struct bcm_kona_gpio *kona_gpio = irq_data_get_irq_chip_data(d);

 return gpiochip_reqres_irq(&kona_gpio->gpio_chip, d->hwirq);
}
