
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int gpio_free (unsigned int) ;

__attribute__((used)) static void devm_gpio_release(struct device *dev, void *res)
{
 unsigned *gpio = res;

 gpio_free(*gpio);
}
