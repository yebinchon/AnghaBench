
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int PIOBU_HIGH ;
 int PIOBU_LOW ;
 int PIOBU_SOD ;
 int sama5d2_piobu_write_value (struct gpio_chip*,unsigned int,int ,int) ;

__attribute__((used)) static void sama5d2_piobu_set(struct gpio_chip *chip, unsigned int pin,
         int value)
{
 if (!value)
  value = PIOBU_LOW;
 else
  value = PIOBU_HIGH;

 sama5d2_piobu_write_value(chip, pin, PIOBU_SOD, value);
}
