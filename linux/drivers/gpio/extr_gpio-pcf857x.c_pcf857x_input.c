
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf857x {int out; int (* write ) (int ,int) ;int lock; int client; } ;
struct gpio_chip {int dummy; } ;


 struct pcf857x* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int pcf857x_input(struct gpio_chip *chip, unsigned offset)
{
 struct pcf857x *gpio = gpiochip_get_data(chip);
 int status;

 mutex_lock(&gpio->lock);
 gpio->out |= (1 << offset);
 status = gpio->write(gpio->client, gpio->out);
 mutex_unlock(&gpio->lock);

 return status;
}
