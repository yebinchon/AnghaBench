
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int can_sleep; int * dbg_show; int ngpio; int base; int direction_output; int direction_input; int get_direction; int set; scalar_t__ get; scalar_t__ request; int parent; int label; int owner; } ;
struct TYPE_4__ {TYPE_1__* desc; int dev; } ;
struct TYPE_3__ {int ngpio; scalar_t__ get; scalar_t__ request; } ;


 int DRV_NAME ;
 int THIS_MODULE ;
 int ichx_gpio_direction_input ;
 int ichx_gpio_direction_output ;
 scalar_t__ ichx_gpio_get ;
 int ichx_gpio_get_direction ;
 scalar_t__ ichx_gpio_request ;
 int ichx_gpio_set ;
 TYPE_2__ ichx_priv ;
 int modparam_gpiobase ;

__attribute__((used)) static void ichx_gpiolib_setup(struct gpio_chip *chip)
{
 chip->owner = THIS_MODULE;
 chip->label = DRV_NAME;
 chip->parent = ichx_priv.dev;


 chip->request = ichx_priv.desc->request ?
  ichx_priv.desc->request : ichx_gpio_request;
 chip->get = ichx_priv.desc->get ?
  ichx_priv.desc->get : ichx_gpio_get;

 chip->set = ichx_gpio_set;
 chip->get_direction = ichx_gpio_get_direction;
 chip->direction_input = ichx_gpio_direction_input;
 chip->direction_output = ichx_gpio_direction_output;
 chip->base = modparam_gpiobase;
 chip->ngpio = ichx_priv.desc->ngpio;
 chip->can_sleep = 0;
 chip->dbg_show = ((void*)0);
}
