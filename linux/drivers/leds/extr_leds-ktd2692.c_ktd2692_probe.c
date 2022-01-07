
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct led_classdev {int flags; int name; int brightness_set_blocking; int max_brightness; } ;
struct led_classdev_flash {int * ops; struct led_classdev led_cdev; } ;
struct ktd2692_led_config_data {int max_brightness; } ;
struct ktd2692_context {int lock; struct led_classdev_flash fled_cdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_DEV_CAP_FLASH ;
 int dev_err (int *,char*,int ) ;
 struct ktd2692_context* devm_kzalloc (int *,int,int ) ;
 int flash_ops ;
 int ktd2692_init_flash_timeout (struct led_classdev_flash*,struct ktd2692_led_config_data*) ;
 int ktd2692_init_movie_current_max (struct ktd2692_led_config_data*) ;
 int ktd2692_led_brightness_set ;
 int ktd2692_parse_dt (struct ktd2692_context*,int *,struct ktd2692_led_config_data*) ;
 int ktd2692_setup (struct ktd2692_context*) ;
 int led_classdev_flash_register (int *,struct led_classdev_flash*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct ktd2692_context*) ;

__attribute__((used)) static int ktd2692_probe(struct platform_device *pdev)
{
 struct ktd2692_context *led;
 struct led_classdev *led_cdev;
 struct led_classdev_flash *fled_cdev;
 struct ktd2692_led_config_data led_cfg;
 int ret;

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 fled_cdev = &led->fled_cdev;
 led_cdev = &fled_cdev->led_cdev;

 ret = ktd2692_parse_dt(led, &pdev->dev, &led_cfg);
 if (ret)
  return ret;

 ktd2692_init_flash_timeout(fled_cdev, &led_cfg);
 ktd2692_init_movie_current_max(&led_cfg);

 fled_cdev->ops = &flash_ops;

 led_cdev->max_brightness = led_cfg.max_brightness;
 led_cdev->brightness_set_blocking = ktd2692_led_brightness_set;
 led_cdev->flags |= LED_CORE_SUSPENDRESUME | LED_DEV_CAP_FLASH;

 mutex_init(&led->lock);

 platform_set_drvdata(pdev, led);

 ret = led_classdev_flash_register(&pdev->dev, fled_cdev);
 if (ret) {
  dev_err(&pdev->dev, "can't register LED %s\n", led_cdev->name);
  mutex_destroy(&led->lock);
  return ret;
 }

 ktd2692_setup(led);

 return 0;
}
