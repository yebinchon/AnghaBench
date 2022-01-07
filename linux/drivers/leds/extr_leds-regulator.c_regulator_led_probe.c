
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_brightness; scalar_t__ name; scalar_t__ brightness; int flags; int (* brightness_set_blocking ) (TYPE_1__*,scalar_t__) ;} ;
struct regulator_led {int enabled; TYPE_1__ cdev; int mutex; struct regulator* vcc; } ;
struct regulator {int dummy; } ;
struct platform_device {int dev; } ;
struct led_regulator_platform_data {scalar_t__ name; scalar_t__ brightness; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int LED_CORE_SUSPENDRESUME ;
 int PTR_ERR (struct regulator*) ;
 int dev_err (int *,char*,...) ;
 struct led_regulator_platform_data* dev_get_platdata (int *) ;
 struct regulator_led* devm_kzalloc (int *,int,int ) ;
 struct regulator* devm_regulator_get_exclusive (int *,char*) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 scalar_t__ led_regulator_get_max_brightness (struct regulator*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct regulator_led*) ;
 scalar_t__ regulator_is_enabled (struct regulator*) ;
 int regulator_led_brightness_set (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int regulator_led_probe(struct platform_device *pdev)
{
 struct led_regulator_platform_data *pdata =
   dev_get_platdata(&pdev->dev);
 struct regulator_led *led;
 struct regulator *vcc;
 int ret = 0;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data\n");
  return -ENODEV;
 }

 vcc = devm_regulator_get_exclusive(&pdev->dev, "vled");
 if (IS_ERR(vcc)) {
  dev_err(&pdev->dev, "Cannot get vcc for %s\n", pdata->name);
  return PTR_ERR(vcc);
 }

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (led == ((void*)0))
  return -ENOMEM;

 led->cdev.max_brightness = led_regulator_get_max_brightness(vcc);
 if (pdata->brightness > led->cdev.max_brightness) {
  dev_err(&pdev->dev, "Invalid default brightness %d\n",
    pdata->brightness);
  return -EINVAL;
 }

 led->cdev.brightness_set_blocking = regulator_led_brightness_set;
 led->cdev.name = pdata->name;
 led->cdev.flags |= LED_CORE_SUSPENDRESUME;
 led->vcc = vcc;


 if (regulator_is_enabled(led->vcc))
  led->enabled = 1;

 mutex_init(&led->mutex);

 platform_set_drvdata(pdev, led);

 ret = led_classdev_register(&pdev->dev, &led->cdev);
 if (ret < 0)
  return ret;


 led->cdev.brightness = pdata->brightness;


 regulator_led_brightness_set(&led->cdev, led->cdev.brightness);

 return 0;
}
