
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int can_sleep; int base; unsigned int ngpio; int owner; TYPE_2__* parent; int of_node; int label; int dbg_show; int set; int get; int direction_output; int direction_input; } ;
struct adnp {TYPE_1__* client; scalar_t__ reg_shift; struct gpio_chip gpio; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; int name; } ;


 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int THIS_MODULE ;
 int adnp_gpio_dbg_show ;
 int adnp_gpio_direction_input ;
 int adnp_gpio_direction_output ;
 int adnp_gpio_get ;
 int adnp_gpio_set ;
 int devm_gpiochip_add_data (TYPE_2__*,struct gpio_chip*,struct adnp*) ;
 scalar_t__ get_count_order (unsigned int) ;

__attribute__((used)) static int adnp_gpio_setup(struct adnp *adnp, unsigned int num_gpios)
{
 struct gpio_chip *chip = &adnp->gpio;
 int err;

 adnp->reg_shift = get_count_order(num_gpios) - 3;

 chip->direction_input = adnp_gpio_direction_input;
 chip->direction_output = adnp_gpio_direction_output;
 chip->get = adnp_gpio_get;
 chip->set = adnp_gpio_set;
 chip->can_sleep = 1;

 if (IS_ENABLED(CONFIG_DEBUG_FS))
  chip->dbg_show = adnp_gpio_dbg_show;

 chip->base = -1;
 chip->ngpio = num_gpios;
 chip->label = adnp->client->name;
 chip->parent = &adnp->client->dev;
 chip->of_node = chip->parent->of_node;
 chip->owner = THIS_MODULE;

 err = devm_gpiochip_add_data(&adnp->client->dev, chip, adnp);
 if (err)
  return err;

 return 0;
}
