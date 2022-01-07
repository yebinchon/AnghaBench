
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int can_sleep; int ngpio; int names; int owner; int * parent; int label; int base; int set_config; int set_multiple; int get_direction; int set; int get; int direction_output; int direction_input; } ;
struct pca953x_chip {int names; TYPE_1__* client; int gpio_start; struct gpio_chip gpio_chip; } ;
struct TYPE_2__ {int dev; } ;


 int THIS_MODULE ;
 int dev_name (int *) ;
 int pca953x_gpio_direction_input ;
 int pca953x_gpio_direction_output ;
 int pca953x_gpio_get_direction ;
 int pca953x_gpio_get_value ;
 int pca953x_gpio_set_config ;
 int pca953x_gpio_set_multiple ;
 int pca953x_gpio_set_value ;

__attribute__((used)) static void pca953x_setup_gpio(struct pca953x_chip *chip, int gpios)
{
 struct gpio_chip *gc;

 gc = &chip->gpio_chip;

 gc->direction_input = pca953x_gpio_direction_input;
 gc->direction_output = pca953x_gpio_direction_output;
 gc->get = pca953x_gpio_get_value;
 gc->set = pca953x_gpio_set_value;
 gc->get_direction = pca953x_gpio_get_direction;
 gc->set_multiple = pca953x_gpio_set_multiple;
 gc->set_config = pca953x_gpio_set_config;
 gc->can_sleep = 1;

 gc->base = chip->gpio_start;
 gc->ngpio = gpios;
 gc->label = dev_name(&chip->client->dev);
 gc->parent = &chip->client->dev;
 gc->owner = THIS_MODULE;
 gc->names = chip->names;
}
