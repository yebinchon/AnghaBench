
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int ALTR_A10SR_IN_VALID_RANGE_LO ;
 unsigned int ALTR_A10SR_LED_VALID_SHIFT ;
 int EINVAL ;

__attribute__((used)) static int altr_a10sr_gpio_direction_input(struct gpio_chip *gc,
        unsigned int nr)
{
 if (nr < (ALTR_A10SR_IN_VALID_RANGE_LO - ALTR_A10SR_LED_VALID_SHIFT))
  return -EINVAL;

 return 0;
}
