
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int of_gpio_n_cells; int of_node; int names; scalar_t__ of_xlate; } ;


 int EINVAL ;
 int MAX_PHANDLE_ARGS ;
 int devprop_gpiochip_set_names (struct gpio_chip*,int ) ;
 int gpiochip_remove_pin_ranges (struct gpio_chip*) ;
 int of_fwnode_handle (int ) ;
 scalar_t__ of_gpio_simple_xlate ;
 int of_gpiochip_add_pin_range (struct gpio_chip*) ;
 int of_gpiochip_init_valid_mask (struct gpio_chip*) ;
 int of_gpiochip_scan_gpios (struct gpio_chip*) ;
 int of_node_get (int ) ;
 int of_node_put (int ) ;

int of_gpiochip_add(struct gpio_chip *chip)
{
 int ret;

 if (!chip->of_node)
  return 0;

 if (!chip->of_xlate) {
  chip->of_gpio_n_cells = 2;
  chip->of_xlate = of_gpio_simple_xlate;
 }

 if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
  return -EINVAL;

 of_gpiochip_init_valid_mask(chip);

 ret = of_gpiochip_add_pin_range(chip);
 if (ret)
  return ret;


 if (!chip->names)
  devprop_gpiochip_set_names(chip,
        of_fwnode_handle(chip->of_node));

 of_node_get(chip->of_node);

 ret = of_gpiochip_scan_gpios(chip);
 if (ret) {
  of_node_put(chip->of_node);
  gpiochip_remove_pin_ranges(chip);
 }

 return ret;
}
