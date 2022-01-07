
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int ngpio; } ;
struct bcm_kona_gpio {int irq_domain; TYPE_1__ gpio_chip; } ;


 int ENXIO ;
 struct bcm_kona_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int bcm_kona_gpio_to_irq(struct gpio_chip *chip, unsigned gpio)
{
 struct bcm_kona_gpio *kona_gpio;

 kona_gpio = gpiochip_get_data(chip);
 if (gpio >= kona_gpio->gpio_chip.ngpio)
  return -ENXIO;
 return irq_create_mapping(kona_gpio->irq_domain, gpio);
}
