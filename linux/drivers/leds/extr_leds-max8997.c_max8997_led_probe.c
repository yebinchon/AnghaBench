
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_7__ {int parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct max8997_platform_data {TYPE_1__* led_pdata; } ;
struct TYPE_8__ {char* name; scalar_t__ max_brightness; scalar_t__ brightness; int groups; int flags; int brightness_set; } ;
struct max8997_led {int id; TYPE_3__ cdev; int mutex; struct max8997_dev* iodev; } ;
struct max8997_dev {int dev; } ;
typedef int name ;
struct TYPE_6__ {scalar_t__* mode; scalar_t__* brightness; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 scalar_t__ MAX8997_NONE ;
 int dev_err (TYPE_2__*,char*) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 struct max8997_platform_data* dev_get_platdata (int ) ;
 struct max8997_led* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_led_classdev_register (TYPE_2__*,TYPE_3__*) ;
 int max8997_groups ;
 int max8997_led_brightness_set ;
 int max8997_led_set_current (struct max8997_led*,scalar_t__) ;
 int max8997_led_set_mode (struct max8997_led*,scalar_t__) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int max8997_led_probe(struct platform_device *pdev)
{
 struct max8997_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct max8997_platform_data *pdata = dev_get_platdata(iodev->dev);
 struct max8997_led *led;
 char name[20];
 int ret = 0;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data\n");
  return -ENODEV;
 }

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (led == ((void*)0))
  return -ENOMEM;

 led->id = pdev->id;
 snprintf(name, sizeof(name), "max8997-led%d", pdev->id);

 led->cdev.name = name;
 led->cdev.brightness_set = max8997_led_brightness_set;
 led->cdev.flags |= LED_CORE_SUSPENDRESUME;
 led->cdev.brightness = 0;
 led->cdev.groups = max8997_groups;
 led->iodev = iodev;


 if (pdata->led_pdata) {
  u8 mode = 0, brightness = 0;

  mode = pdata->led_pdata->mode[led->id];
  brightness = pdata->led_pdata->brightness[led->id];

  max8997_led_set_mode(led, mode);

  if (brightness > led->cdev.max_brightness)
   brightness = led->cdev.max_brightness;
  max8997_led_set_current(led, brightness);
  led->cdev.brightness = brightness;
 } else {
  max8997_led_set_mode(led, MAX8997_NONE);
  max8997_led_set_current(led, 0);
 }

 mutex_init(&led->mutex);

 ret = devm_led_classdev_register(&pdev->dev, &led->cdev);
 if (ret < 0)
  return ret;

 return 0;
}
