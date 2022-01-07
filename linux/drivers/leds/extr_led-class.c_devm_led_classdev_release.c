
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device {int dummy; } ;


 int led_classdev_unregister (struct led_classdev*) ;

__attribute__((used)) static void devm_led_classdev_release(struct device *dev, void *res)
{
 led_classdev_unregister(*(struct led_classdev **)res);
}
