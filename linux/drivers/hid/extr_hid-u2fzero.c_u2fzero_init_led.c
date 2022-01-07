
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int brightness_set_blocking; int flags; int max_brightness; int * name; } ;
struct u2fzero_device {TYPE_2__ ldev; TYPE_1__* hdev; int * led_name; } ;
struct TYPE_3__ {int dev; } ;


 int DRIVER_SHORT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_HW_PLUGGABLE ;
 int LED_ON ;
 int * devm_kasprintf (int *,int ,char*,int ,unsigned int) ;
 int devm_led_classdev_register (int *,TYPE_2__*) ;
 int u2fzero_brightness_set ;

__attribute__((used)) static int u2fzero_init_led(struct u2fzero_device *dev,
       unsigned int minor)
{
 dev->led_name = devm_kasprintf(&dev->hdev->dev, GFP_KERNEL,
  "%s%u", DRIVER_SHORT, minor);
 if (dev->led_name == ((void*)0))
  return -ENOMEM;

 dev->ldev.name = dev->led_name;
 dev->ldev.max_brightness = LED_ON;
 dev->ldev.flags = LED_HW_PLUGGABLE;
 dev->ldev.brightness_set_blocking = u2fzero_brightness_set;

 return devm_led_classdev_register(&dev->hdev->dev, &dev->ldev);
}
