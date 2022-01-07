
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf857x {unsigned int out; int (* write ) (int ,unsigned int) ;int lock; int client; } ;
struct gpio_chip {int dummy; } ;


 struct pcf857x* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int pcf857x_output(struct gpio_chip *chip, unsigned offset, int value)
{
 struct pcf857x *gpio = gpiochip_get_data(chip);
 unsigned bit = 1 << offset;
 int status;

 mutex_lock(&gpio->lock);
 if (value)
  gpio->out |= bit;
 else
  gpio->out &= ~bit;
 status = gpio->write(gpio->client, gpio->out);
 mutex_unlock(&gpio->lock);

 return status;
}
