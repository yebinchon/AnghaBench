
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_flash_config {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct led_init_data {int devicename; int fwnode; } ;
struct led_classdev {int flags; int max_brightness; int brightness_set_blocking; } ;
struct led_classdev_flash {struct led_classdev led_cdev; int * ops; } ;
struct device_node {int dummy; } ;
struct aat1290_led_config_data {int max_brightness; } ;
struct aat1290_led {int lock; int v4l2_flash; struct led_classdev_flash fled_cdev; struct platform_device* pdev; } ;


 int AAT1290_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LED_DEV_CAP_FLASH ;
 int PTR_ERR (int ) ;
 int aat1290_init_flash_timeout (struct aat1290_led*,struct aat1290_led_config_data*) ;
 int aat1290_init_v4l2_flash_config (struct aat1290_led*,struct aat1290_led_config_data*,struct v4l2_flash_config*) ;
 int aat1290_led_brightness_set ;
 int aat1290_led_get_configuration (struct aat1290_led*,struct aat1290_led_config_data*,struct device_node**) ;
 struct aat1290_led* devm_kzalloc (struct device*,int,int ) ;
 int flash_ops ;
 int led_classdev_flash_register_ext (struct device*,struct led_classdev_flash*,struct led_init_data*) ;
 int led_classdev_flash_unregister (struct led_classdev_flash*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int of_fwnode_handle (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct aat1290_led*) ;
 int v4l2_flash_init (struct device*,int ,struct led_classdev_flash*,int *,struct v4l2_flash_config*) ;
 int v4l2_flash_ops ;

__attribute__((used)) static int aat1290_led_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *sub_node = ((void*)0);
 struct aat1290_led *led;
 struct led_classdev *led_cdev;
 struct led_classdev_flash *fled_cdev;
 struct led_init_data init_data = {};
 struct aat1290_led_config_data led_cfg = {};
 struct v4l2_flash_config v4l2_sd_cfg = {};
 int ret;

 led = devm_kzalloc(dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->pdev = pdev;
 platform_set_drvdata(pdev, led);

 fled_cdev = &led->fled_cdev;
 fled_cdev->ops = &flash_ops;
 led_cdev = &fled_cdev->led_cdev;

 ret = aat1290_led_get_configuration(led, &led_cfg, &sub_node);
 if (ret < 0)
  return ret;

 mutex_init(&led->lock);


 led_cdev->brightness_set_blocking = aat1290_led_brightness_set;
 led_cdev->max_brightness = led_cfg.max_brightness;
 led_cdev->flags |= LED_DEV_CAP_FLASH;

 aat1290_init_flash_timeout(led, &led_cfg);

 init_data.fwnode = of_fwnode_handle(sub_node);
 init_data.devicename = AAT1290_NAME;


 ret = led_classdev_flash_register_ext(&pdev->dev, fled_cdev,
           &init_data);
 if (ret < 0)
  goto err_flash_register;

 aat1290_init_v4l2_flash_config(led, &led_cfg, &v4l2_sd_cfg);


 led->v4l2_flash = v4l2_flash_init(dev, of_fwnode_handle(sub_node),
       fled_cdev, &v4l2_flash_ops,
       &v4l2_sd_cfg);
 if (IS_ERR(led->v4l2_flash)) {
  ret = PTR_ERR(led->v4l2_flash);
  goto error_v4l2_flash_init;
 }

 return 0;

error_v4l2_flash_init:
 led_classdev_flash_unregister(fled_cdev);
err_flash_register:
 mutex_destroy(&led->lock);

 return ret;
}
