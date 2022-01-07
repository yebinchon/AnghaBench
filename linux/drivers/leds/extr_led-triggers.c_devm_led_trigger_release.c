
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {int dummy; } ;
struct device {int dummy; } ;


 int led_trigger_unregister (struct led_trigger*) ;

__attribute__((used)) static void devm_led_trigger_release(struct device *dev, void *res)
{
 led_trigger_unregister(*(struct led_trigger **)res);
}
