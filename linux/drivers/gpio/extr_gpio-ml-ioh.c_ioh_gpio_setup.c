
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int ngpio; int can_sleep; int to_irq; int * dbg_show; int set; int direction_output; int get; int direction_input; int owner; int label; } ;
struct ioh_gpio {int dev; struct gpio_chip gpio; } ;


 int THIS_MODULE ;
 int dev_name (int ) ;
 int ioh_gpio_direction_input ;
 int ioh_gpio_direction_output ;
 int ioh_gpio_get ;
 int ioh_gpio_set ;
 int ioh_gpio_to_irq ;

__attribute__((used)) static void ioh_gpio_setup(struct ioh_gpio *chip, int num_port)
{
 struct gpio_chip *gpio = &chip->gpio;

 gpio->label = dev_name(chip->dev);
 gpio->owner = THIS_MODULE;
 gpio->direction_input = ioh_gpio_direction_input;
 gpio->get = ioh_gpio_get;
 gpio->direction_output = ioh_gpio_direction_output;
 gpio->set = ioh_gpio_set;
 gpio->dbg_show = ((void*)0);
 gpio->base = -1;
 gpio->ngpio = num_port;
 gpio->can_sleep = 0;
 gpio->to_irq = ioh_gpio_to_irq;
}
