
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {int brightness_set; int name; } ;
struct TYPE_4__ {TYPE_2__ cdev; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ BIT (int) ;
 int devm_led_classdev_register (int *,TYPE_2__*) ;
 TYPE_1__* leds ;
 scalar_t__ leds_back ;
 scalar_t__ leds_front ;
 int ot200_led_brightness_set ;
 int outb (scalar_t__,int) ;

__attribute__((used)) static int ot200_led_probe(struct platform_device *pdev)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(leds); i++) {

  leds[i].cdev.name = leds[i].name;
  leds[i].cdev.brightness_set = ot200_led_brightness_set;

  ret = devm_led_classdev_register(&pdev->dev, &leds[i].cdev);
  if (ret < 0)
   return ret;
 }

 leds_front = 0;
 leds_back = BIT(1);
 outb(leds_front, 0x49);
 outb(leds_back, 0x5a);

 return 0;
}
