
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgpio_instance {int* gpio_width; } ;



__attribute__((used)) static inline int xgpio_index(struct xgpio_instance *chip, int gpio)
{
 if (gpio >= chip->gpio_width[0])
  return 1;

 return 0;
}
