
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max732x_chip {unsigned int dir_input; unsigned int dir_output; TYPE_1__* client; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int name; int dev; } ;


 int EACCES ;
 int dev_dbg (int *,char*,int ,unsigned int) ;
 struct max732x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int max732x_gpio_set_value (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int max732x_gpio_direction_input(struct gpio_chip *gc, unsigned off)
{
 struct max732x_chip *chip = gpiochip_get_data(gc);
 unsigned int mask = 1u << off;

 if ((mask & chip->dir_input) == 0) {
  dev_dbg(&chip->client->dev, "%s port %d is output only\n",
   chip->client->name, off);
  return -EACCES;
 }





 if ((mask & chip->dir_output))
  max732x_gpio_set_value(gc, off, 1);

 return 0;
}
