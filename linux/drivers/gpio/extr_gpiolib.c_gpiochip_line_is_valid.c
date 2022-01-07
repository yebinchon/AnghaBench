
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int valid_mask; } ;


 scalar_t__ likely (int) ;
 int test_bit (unsigned int,int ) ;

bool gpiochip_line_is_valid(const struct gpio_chip *gpiochip,
    unsigned int offset)
{

 if (likely(!gpiochip->valid_mask))
  return 1;
 return test_bit(offset, gpiochip->valid_mask);
}
