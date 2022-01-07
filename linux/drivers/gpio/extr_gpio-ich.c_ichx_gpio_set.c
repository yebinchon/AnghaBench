
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_LVL ;
 int ichx_write_bit (int ,unsigned int,int,int ) ;

__attribute__((used)) static void ichx_gpio_set(struct gpio_chip *chip, unsigned nr, int val)
{
 ichx_write_bit(GPIO_LVL, nr, val, 0);
}
