
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct led_classdev {int dummy; } ;
struct asic3_led {TYPE_1__* cdev; int default_trigger; int name; } ;
struct TYPE_3__ {int default_trigger; int blink_set; int brightness_set; int flags; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int blink_set ;
 int brightness_set ;
 struct asic3_led* dev_get_platdata (int *) ;
 TYPE_1__* devm_kzalloc (int *,int,int ) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int mfd_cell_disable (struct platform_device*) ;
 int mfd_cell_enable (struct platform_device*) ;

__attribute__((used)) static int asic3_led_probe(struct platform_device *pdev)
{
 struct asic3_led *led = dev_get_platdata(&pdev->dev);
 int ret;

 ret = mfd_cell_enable(pdev);
 if (ret < 0)
  return ret;

 led->cdev = devm_kzalloc(&pdev->dev, sizeof(struct led_classdev),
    GFP_KERNEL);
 if (!led->cdev) {
  ret = -ENOMEM;
  goto out;
 }

 led->cdev->name = led->name;
 led->cdev->flags = LED_CORE_SUSPENDRESUME;
 led->cdev->brightness_set = brightness_set;
 led->cdev->blink_set = blink_set;
 led->cdev->default_trigger = led->default_trigger;

 ret = led_classdev_register(&pdev->dev, led->cdev);
 if (ret < 0)
  goto out;

 return 0;

out:
 (void) mfd_cell_disable(pdev);
 return ret;
}
