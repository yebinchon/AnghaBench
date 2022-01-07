
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpio_rcar_config_general_input_output_mode (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int gpio_rcar_direction_input(struct gpio_chip *chip, unsigned offset)
{
 gpio_rcar_config_general_input_output_mode(chip, offset, 0);
 return 0;
}
