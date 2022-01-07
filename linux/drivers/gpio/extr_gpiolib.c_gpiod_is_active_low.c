
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; } ;


 int FLAG_ACTIVE_LOW ;
 int VALIDATE_DESC (struct gpio_desc const*) ;
 int test_bit (int ,int *) ;

int gpiod_is_active_low(const struct gpio_desc *desc)
{
 VALIDATE_DESC(desc);
 return test_bit(FLAG_ACTIVE_LOW, &desc->flags);
}
