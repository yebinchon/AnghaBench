
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int VALIDATE_DESC (struct gpio_desc*) ;
 int gpiod_direction_output_raw_commit (struct gpio_desc*,int) ;

int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
{
 VALIDATE_DESC(desc);
 return gpiod_direction_output_raw_commit(desc, value);
}
