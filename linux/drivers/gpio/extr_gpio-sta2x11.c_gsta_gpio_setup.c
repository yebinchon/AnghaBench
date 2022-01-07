
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int can_sleep; int to_irq; int ngpio; int * dbg_show; int set; int direction_output; int get; int direction_input; int owner; int label; } ;
struct gsta_gpio {int dev; struct gpio_chip gpio; } ;


 int GSTA_NR_GPIO ;
 int THIS_MODULE ;
 int dev_name (int ) ;
 int gsta_gpio_direction_input ;
 int gsta_gpio_direction_output ;
 int gsta_gpio_get ;
 int gsta_gpio_set ;
 int gsta_gpio_to_irq ;

__attribute__((used)) static void gsta_gpio_setup(struct gsta_gpio *chip)
{
 struct gpio_chip *gpio = &chip->gpio;







 static int gpio_base;

 gpio->label = dev_name(chip->dev);
 gpio->owner = THIS_MODULE;
 gpio->direction_input = gsta_gpio_direction_input;
 gpio->get = gsta_gpio_get;
 gpio->direction_output = gsta_gpio_direction_output;
 gpio->set = gsta_gpio_set;
 gpio->dbg_show = ((void*)0);
 gpio->base = gpio_base;
 gpio->ngpio = GSTA_NR_GPIO;
 gpio->can_sleep = 0;
 gpio->to_irq = gsta_gpio_to_irq;





 if (!gpio_base)
  gpio_base = -1;
}
