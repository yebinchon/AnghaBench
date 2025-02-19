
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct led_info {int flags; int default_trigger; int name; } ;
struct adp5520_leds_platform_data {int num_leds; struct led_info* leds; } ;
struct TYPE_6__ {int brightness; int brightness_set_blocking; int default_trigger; int name; } ;
struct adp5520_led {int flags; int id; TYPE_1__ cdev; int master; } ;


 int ADP5520_01_MAXLEDS ;
 int ADP5520_FLAG_LED_MASK ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_OFF ;
 int adp5520_led_prepare (struct platform_device*) ;
 int adp5520_led_set ;
 int adp5520_led_setup (struct adp5520_led*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct adp5520_leds_platform_data* dev_get_platdata (TYPE_3__*) ;
 struct adp5520_led* devm_kcalloc (TYPE_3__*,int,int,int ) ;
 int led_classdev_register (int ,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct adp5520_led*) ;

__attribute__((used)) static int adp5520_led_probe(struct platform_device *pdev)
{
 struct adp5520_leds_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct adp5520_led *led, *led_dat;
 struct led_info *cur_led;
 int ret, i;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "missing platform data\n");
  return -ENODEV;
 }

 if (pdata->num_leds > ADP5520_01_MAXLEDS) {
  dev_err(&pdev->dev, "can't handle more than %d LEDS\n",
     ADP5520_01_MAXLEDS);
  return -EFAULT;
 }

 led = devm_kcalloc(&pdev->dev, pdata->num_leds, sizeof(*led),
    GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 ret = adp5520_led_prepare(pdev);
 if (ret) {
  dev_err(&pdev->dev, "failed to write\n");
  return ret;
 }

 for (i = 0; i < pdata->num_leds; ++i) {
  cur_led = &pdata->leds[i];
  led_dat = &led[i];

  led_dat->cdev.name = cur_led->name;
  led_dat->cdev.default_trigger = cur_led->default_trigger;
  led_dat->cdev.brightness_set_blocking = adp5520_led_set;
  led_dat->cdev.brightness = LED_OFF;

  if (cur_led->flags & ADP5520_FLAG_LED_MASK)
   led_dat->flags = cur_led->flags;
  else
   led_dat->flags = i + 1;

  led_dat->id = led_dat->flags & ADP5520_FLAG_LED_MASK;

  led_dat->master = pdev->dev.parent;

  ret = led_classdev_register(led_dat->master, &led_dat->cdev);
  if (ret) {
   dev_err(&pdev->dev, "failed to register LED %d\n",
    led_dat->id);
   goto err;
  }

  ret = adp5520_led_setup(led_dat);
  if (ret) {
   dev_err(&pdev->dev, "failed to write\n");
   i++;
   goto err;
  }
 }

 platform_set_drvdata(pdev, led);
 return 0;

err:
 if (i > 0) {
  for (i = i - 1; i >= 0; i--)
   led_classdev_unregister(&led[i].cdev);
 }

 return ret;
}
