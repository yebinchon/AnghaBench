
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_led_classdev_match ;
 int devm_led_classdev_release ;
 int devres_release (struct device*,int ,int ,struct led_classdev*) ;

void devm_led_classdev_unregister(struct device *dev,
      struct led_classdev *led_cdev)
{
 WARN_ON(devres_release(dev,
          devm_led_classdev_release,
          devm_led_classdev_match, led_cdev));
}
