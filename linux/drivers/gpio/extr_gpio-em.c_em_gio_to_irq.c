
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int irq_domain; } ;


 TYPE_1__* gpio_to_priv (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int em_gio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 return irq_create_mapping(gpio_to_priv(chip)->irq_domain, offset);
}
