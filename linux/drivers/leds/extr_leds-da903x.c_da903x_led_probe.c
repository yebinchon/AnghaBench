
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct led_info {int flags; int default_trigger; int name; } ;
struct TYPE_5__ {int brightness; int brightness_set_blocking; int default_trigger; int name; } ;
struct da903x_led {int id; TYPE_1__ cdev; int master; int flags; } ;


 int DA9030_ID_LED_1 ;
 int DA9030_ID_VIBRA ;
 int DA9034_ID_LED_1 ;
 int DA9034_ID_VIBRA ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_OFF ;
 int da903x_led_set ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct led_info* dev_get_platdata (TYPE_2__*) ;
 struct da903x_led* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_led_classdev_register (int ,TYPE_1__*) ;

__attribute__((used)) static int da903x_led_probe(struct platform_device *pdev)
{
 struct led_info *pdata = dev_get_platdata(&pdev->dev);
 struct da903x_led *led;
 int id, ret;

 if (pdata == ((void*)0))
  return 0;

 id = pdev->id;

 if (!((id >= DA9030_ID_LED_1 && id <= DA9030_ID_VIBRA) ||
       (id >= DA9034_ID_LED_1 && id <= DA9034_ID_VIBRA))) {
  dev_err(&pdev->dev, "invalid LED ID (%d) specified\n", id);
  return -EINVAL;
 }

 led = devm_kzalloc(&pdev->dev, sizeof(struct da903x_led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->cdev.name = pdata->name;
 led->cdev.default_trigger = pdata->default_trigger;
 led->cdev.brightness_set_blocking = da903x_led_set;
 led->cdev.brightness = LED_OFF;

 led->id = id;
 led->flags = pdata->flags;
 led->master = pdev->dev.parent;

 ret = devm_led_classdev_register(led->master, &led->cdev);
 if (ret) {
  dev_err(&pdev->dev, "failed to register LED %d\n", id);
  return ret;
 }

 return 0;
}
