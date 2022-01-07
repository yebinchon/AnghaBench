
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hid_device {int dev; } ;
struct TYPE_3__ {char* name; int flags; int (* brightness_set_blocking ) (TYPE_1__*,int ) ;int max_brightness; } ;
struct hammer_kbd_leds {TYPE_1__ cdev; struct hid_device* hdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_HW_PLUGGABLE ;
 int MAX_BRIGHTNESS ;
 struct hammer_kbd_leds* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,TYPE_1__*) ;
 int hammer_kbd_brightness_set_blocking (TYPE_1__*,int ) ;

__attribute__((used)) static int hammer_register_leds(struct hid_device *hdev)
{
 struct hammer_kbd_leds *kbd_backlight;

 kbd_backlight = devm_kzalloc(&hdev->dev,
         sizeof(*kbd_backlight),
         GFP_KERNEL);
 if (!kbd_backlight)
  return -ENOMEM;

 kbd_backlight->hdev = hdev;
 kbd_backlight->cdev.name = "hammer::kbd_backlight";
 kbd_backlight->cdev.max_brightness = MAX_BRIGHTNESS;
 kbd_backlight->cdev.brightness_set_blocking =
  hammer_kbd_brightness_set_blocking;
 kbd_backlight->cdev.flags = LED_HW_PLUGGABLE;


 hammer_kbd_brightness_set_blocking(&kbd_backlight->cdev, 0);

 return devm_led_classdev_register(&hdev->dev, &kbd_backlight->cdev);
}
