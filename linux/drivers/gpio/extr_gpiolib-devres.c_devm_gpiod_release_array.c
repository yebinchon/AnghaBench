
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int dummy; } ;
struct device {int dummy; } ;


 int gpiod_put_array (struct gpio_descs*) ;

__attribute__((used)) static void devm_gpiod_release_array(struct device *dev, void *res)
{
 struct gpio_descs **descs = res;

 gpiod_put_array(*descs);
}
