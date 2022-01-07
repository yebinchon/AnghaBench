
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int tpic2810_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int tpic2810_direction_output(struct gpio_chip *chip,
         unsigned offset, int value)
{

 tpic2810_set(chip, offset, value);
 return 0;
}
