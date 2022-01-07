
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int ngpio; int can_sleep; int owner; int request; int set; int get; int direction_output; int direction_input; int parent; int label; } ;
struct ad5592r_state {TYPE_1__ gpiochip; int gpio_lock; int dev; int gpio_map; } ;


 int THIS_MODULE ;
 int ad5592r_gpio_direction_input ;
 int ad5592r_gpio_direction_output ;
 int ad5592r_gpio_get ;
 int ad5592r_gpio_request ;
 int ad5592r_gpio_set ;
 int dev_name (int ) ;
 int gpiochip_add_data (TYPE_1__*,struct ad5592r_state*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ad5592r_gpio_init(struct ad5592r_state *st)
{
 if (!st->gpio_map)
  return 0;

 st->gpiochip.label = dev_name(st->dev);
 st->gpiochip.base = -1;
 st->gpiochip.ngpio = 8;
 st->gpiochip.parent = st->dev;
 st->gpiochip.can_sleep = 1;
 st->gpiochip.direction_input = ad5592r_gpio_direction_input;
 st->gpiochip.direction_output = ad5592r_gpio_direction_output;
 st->gpiochip.get = ad5592r_gpio_get;
 st->gpiochip.set = ad5592r_gpio_set;
 st->gpiochip.request = ad5592r_gpio_request;
 st->gpiochip.owner = THIS_MODULE;

 mutex_init(&st->gpio_lock);

 return gpiochip_add_data(&st->gpiochip, st);
}
