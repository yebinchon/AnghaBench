
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int PIOBU_DIRECTION ;
 unsigned int PIOBU_HIGH ;
 unsigned int PIOBU_OUT ;
 int PIOBU_SOD ;
 int sama5d2_piobu_write_value (struct gpio_chip*,unsigned int,int,unsigned int) ;

__attribute__((used)) static int sama5d2_piobu_direction_output(struct gpio_chip *chip,
       unsigned int pin, int value)
{
 unsigned int val = PIOBU_OUT;

 if (value)
  val |= PIOBU_HIGH;

 return sama5d2_piobu_write_value(chip, pin, PIOBU_DIRECTION | PIOBU_SOD,
      val);
}
