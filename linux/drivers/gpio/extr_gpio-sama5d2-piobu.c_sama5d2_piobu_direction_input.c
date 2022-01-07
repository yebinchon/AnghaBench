
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int PIOBU_DIRECTION ;
 int PIOBU_IN ;
 int sama5d2_piobu_write_value (struct gpio_chip*,unsigned int,int ,int ) ;

__attribute__((used)) static int sama5d2_piobu_direction_input(struct gpio_chip *chip,
      unsigned int pin)
{
 return sama5d2_piobu_write_value(chip, pin, PIOBU_DIRECTION, PIOBU_IN);
}
