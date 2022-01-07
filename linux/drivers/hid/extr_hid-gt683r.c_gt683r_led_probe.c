
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hid_device_id {int dummy; } ;
struct hid_device {int dev; } ;
struct gt683r_led {TYPE_1__* led_devs; struct hid_device* hdev; int mode; int work; int lock; } ;
struct TYPE_3__ {char* name; int max_brightness; int groups; int brightness_set; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GT683R_LED_COUNT ;
 int GT683R_LED_NORMAL ;
 int HID_CONNECT_HIDRAW ;
 int INIT_WORK (int *,int ) ;
 char* dev_name (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int gt683r_brightness_set ;
 int gt683r_led_groups ;
 int gt683r_led_work ;
 char** gt683r_panel_names ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct gt683r_led*) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int gt683r_led_probe(struct hid_device *hdev,
   const struct hid_device_id *id)
{
 int i;
 int ret;
 int name_sz;
 char *name;
 struct gt683r_led *led;

 led = devm_kzalloc(&hdev->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 mutex_init(&led->lock);
 INIT_WORK(&led->work, gt683r_led_work);

 led->mode = GT683R_LED_NORMAL;
 led->hdev = hdev;
 hid_set_drvdata(hdev, led);

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "hid parsing failed\n");
  return ret;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_HIDRAW);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  return ret;
 }

 for (i = 0; i < GT683R_LED_COUNT; i++) {
  name_sz = strlen(dev_name(&hdev->dev)) +
    strlen(gt683r_panel_names[i]) + 3;

  name = devm_kzalloc(&hdev->dev, name_sz, GFP_KERNEL);
  if (!name) {
   ret = -ENOMEM;
   goto fail;
  }

  snprintf(name, name_sz, "%s::%s",
    dev_name(&hdev->dev), gt683r_panel_names[i]);
  led->led_devs[i].name = name;
  led->led_devs[i].max_brightness = 1;
  led->led_devs[i].brightness_set = gt683r_brightness_set;
  led->led_devs[i].groups = gt683r_led_groups;

  ret = led_classdev_register(&hdev->dev, &led->led_devs[i]);
  if (ret) {
   hid_err(hdev, "could not register led device\n");
   goto fail;
  }
 }

 return 0;

fail:
 for (i = i - 1; i >= 0; i--)
  led_classdev_unregister(&led->led_devs[i]);
 hid_hw_stop(hdev);
 return ret;
}
