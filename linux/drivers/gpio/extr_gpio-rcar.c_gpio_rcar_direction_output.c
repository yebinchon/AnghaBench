
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpio_rcar_config_general_input_output_mode (struct gpio_chip*,unsigned int,int) ;
 int gpio_rcar_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int gpio_rcar_direction_output(struct gpio_chip *chip, unsigned offset,
          int value)
{

 gpio_rcar_set(chip, offset, value);
 gpio_rcar_config_general_input_output_mode(chip, offset, 1);
 return 0;
}
