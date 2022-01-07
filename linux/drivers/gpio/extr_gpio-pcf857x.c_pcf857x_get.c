
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf857x {int (* read ) (int ) ;int client; } ;
struct gpio_chip {int dummy; } ;


 struct pcf857x* gpiochip_get_data (struct gpio_chip*) ;
 int stub1 (int ) ;

__attribute__((used)) static int pcf857x_get(struct gpio_chip *chip, unsigned offset)
{
 struct pcf857x *gpio = gpiochip_get_data(chip);
 int value;

 value = gpio->read(gpio->client);
 return (value < 0) ? value : !!(value & (1 << offset));
}
