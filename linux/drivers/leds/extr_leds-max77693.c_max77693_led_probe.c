
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct max77693_sub_led {int fled_cdev; int v4l2_flash; } ;
struct max77693_led_device {int lock; scalar_t__ iout_joint; struct max77693_sub_led* sub_leds; int allowed_modes; int regmap; struct platform_device* pdev; } ;
struct max77693_led_config_data {int dummy; } ;
struct max77693_dev {int regmap; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 size_t FLED1 ;
 size_t FLED2 ;
 int GFP_KERNEL ;
 int MODE_FLASH_MASK ;
 struct max77693_dev* dev_get_drvdata (int ) ;
 struct max77693_led_device* devm_kzalloc (struct device*,int,int ) ;
 int led_classdev_flash_unregister (int *) ;
 scalar_t__ max77693_fled_used (struct max77693_led_device*,size_t) ;
 int max77693_init_fled_cdev (struct max77693_sub_led*,struct max77693_led_config_data*) ;
 int max77693_led_get_configuration (struct max77693_led_device*,struct max77693_led_config_data*,struct device_node**) ;
 int max77693_register_led (struct max77693_sub_led*,struct max77693_led_config_data*,struct device_node*) ;
 int max77693_setup (struct max77693_led_device*,struct max77693_led_config_data*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct max77693_led_device*) ;
 int v4l2_flash_release (int ) ;

__attribute__((used)) static int max77693_led_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct max77693_dev *iodev = dev_get_drvdata(dev->parent);
 struct max77693_led_device *led;
 struct max77693_sub_led *sub_leds;
 struct device_node *sub_nodes[2] = {};
 struct max77693_led_config_data led_cfg = {};
 int init_fled_cdev[2], i, ret;

 led = devm_kzalloc(dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->pdev = pdev;
 led->regmap = iodev->regmap;
 led->allowed_modes = MODE_FLASH_MASK;
 sub_leds = led->sub_leds;

 platform_set_drvdata(pdev, led);
 ret = max77693_led_get_configuration(led, &led_cfg, sub_nodes);
 if (ret < 0)
  return ret;

 ret = max77693_setup(led, &led_cfg);
 if (ret < 0)
  return ret;

 mutex_init(&led->lock);

 init_fled_cdev[FLED1] =
   led->iout_joint || max77693_fled_used(led, FLED1);
 init_fled_cdev[FLED2] =
   !led->iout_joint && max77693_fled_used(led, FLED2);

 for (i = FLED1; i <= FLED2; ++i) {
  if (!init_fled_cdev[i])
   continue;


  max77693_init_fled_cdev(&sub_leds[i], &led_cfg);





  ret = max77693_register_led(&sub_leds[i], &led_cfg,
      sub_nodes[i]);
  if (ret < 0) {




   if (i == FLED2)
    goto err_register_led2;
   else
    goto err_register_led1;
  }
 }

 return 0;

err_register_led2:

 if (!init_fled_cdev[FLED1])
  goto err_register_led1;
 v4l2_flash_release(sub_leds[FLED1].v4l2_flash);
 led_classdev_flash_unregister(&sub_leds[FLED1].fled_cdev);
err_register_led1:
 mutex_destroy(&led->lock);

 return ret;
}
