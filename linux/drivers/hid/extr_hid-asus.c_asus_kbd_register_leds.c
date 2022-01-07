
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hid_device {int dev; } ;
struct asus_kbd_leds {int dummy; } ;
struct asus_drvdata {TYPE_2__* kbd_backlight; } ;
struct TYPE_4__ {char* name; int max_brightness; int brightness_get; int brightness_set; } ;
struct TYPE_5__ {int removed; TYPE_1__ cdev; int work; struct hid_device* hdev; scalar_t__ brightness; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned char SUPPORT_KBD_BACKLIGHT ;
 int asus_kbd_backlight_get ;
 int asus_kbd_backlight_set ;
 int asus_kbd_backlight_work ;
 int asus_kbd_get_functions (struct hid_device*,unsigned char*) ;
 int asus_kbd_init (struct hid_device*) ;
 int devm_kfree (int *,TYPE_2__*) ;
 TYPE_2__* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,TYPE_1__*) ;
 struct asus_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int asus_kbd_register_leds(struct hid_device *hdev)
{
 struct asus_drvdata *drvdata = hid_get_drvdata(hdev);
 unsigned char kbd_func;
 int ret;


 ret = asus_kbd_init(hdev);
 if (ret < 0)
  return ret;


 ret = asus_kbd_get_functions(hdev, &kbd_func);
 if (ret < 0)
  return ret;


 if (!(kbd_func & SUPPORT_KBD_BACKLIGHT))
  return -ENODEV;

 drvdata->kbd_backlight = devm_kzalloc(&hdev->dev,
           sizeof(struct asus_kbd_leds),
           GFP_KERNEL);
 if (!drvdata->kbd_backlight)
  return -ENOMEM;

 drvdata->kbd_backlight->removed = 0;
 drvdata->kbd_backlight->brightness = 0;
 drvdata->kbd_backlight->hdev = hdev;
 drvdata->kbd_backlight->cdev.name = "asus::kbd_backlight";
 drvdata->kbd_backlight->cdev.max_brightness = 3;
 drvdata->kbd_backlight->cdev.brightness_set = asus_kbd_backlight_set;
 drvdata->kbd_backlight->cdev.brightness_get = asus_kbd_backlight_get;
 INIT_WORK(&drvdata->kbd_backlight->work, asus_kbd_backlight_work);

 ret = devm_led_classdev_register(&hdev->dev, &drvdata->kbd_backlight->cdev);
 if (ret < 0) {

  devm_kfree(&hdev->dev, drvdata->kbd_backlight);
 }

 return ret;
}
