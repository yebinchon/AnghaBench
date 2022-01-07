
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int can_sleep; int ngpio; int base; int * dbg_show; int set; int direction_output; int get; int direction_input; int owner; int label; } ;
struct bt8xxgpio {TYPE_1__* pdev; struct gpio_chip gpio; } ;
struct TYPE_2__ {int dev; } ;


 int BT8XXGPIO_NR_GPIOS ;
 int THIS_MODULE ;
 int bt8xxgpio_gpio_direction_input ;
 int bt8xxgpio_gpio_direction_output ;
 int bt8xxgpio_gpio_get ;
 int bt8xxgpio_gpio_set ;
 int dev_name (int *) ;
 int modparam_gpiobase ;

__attribute__((used)) static void bt8xxgpio_gpio_setup(struct bt8xxgpio *bg)
{
 struct gpio_chip *c = &bg->gpio;

 c->label = dev_name(&bg->pdev->dev);
 c->owner = THIS_MODULE;
 c->direction_input = bt8xxgpio_gpio_direction_input;
 c->get = bt8xxgpio_gpio_get;
 c->direction_output = bt8xxgpio_gpio_direction_output;
 c->set = bt8xxgpio_gpio_set;
 c->dbg_show = ((void*)0);
 c->base = modparam_gpiobase;
 c->ngpio = BT8XXGPIO_NR_GPIOS;
 c->can_sleep = 0;
}
