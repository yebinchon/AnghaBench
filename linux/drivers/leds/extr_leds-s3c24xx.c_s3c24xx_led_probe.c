
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_led_platdata {int flags; int gpio; int name; int def_trigger; } ;
struct TYPE_2__ {int flags; int name; int default_trigger; int brightness_set; } ;
struct s3c24xx_gpio_led {TYPE_1__ cdev; struct s3c24xx_led_platdata* pdata; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int S3C24XX_LEDF_ACTLOW ;
 int S3C24XX_LEDF_TRISTATE ;
 int S3C_GPIO_PULL_NONE ;
 int dev_err (int *,char*) ;
 struct s3c24xx_led_platdata* dev_get_platdata (int *) ;
 int devm_gpio_request (int *,int ,char*) ;
 struct s3c24xx_gpio_led* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,TYPE_1__*) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int s3c24xx_led_set ;
 int s3c_gpio_setpull (int ,int ) ;

__attribute__((used)) static int s3c24xx_led_probe(struct platform_device *dev)
{
 struct s3c24xx_led_platdata *pdata = dev_get_platdata(&dev->dev);
 struct s3c24xx_gpio_led *led;
 int ret;

 led = devm_kzalloc(&dev->dev, sizeof(struct s3c24xx_gpio_led),
      GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->cdev.brightness_set = s3c24xx_led_set;
 led->cdev.default_trigger = pdata->def_trigger;
 led->cdev.name = pdata->name;
 led->cdev.flags |= LED_CORE_SUSPENDRESUME;

 led->pdata = pdata;

 ret = devm_gpio_request(&dev->dev, pdata->gpio, "S3C24XX_LED");
 if (ret < 0)
  return ret;



 s3c_gpio_setpull(pdata->gpio, S3C_GPIO_PULL_NONE);

 if (pdata->flags & S3C24XX_LEDF_TRISTATE)
  gpio_direction_input(pdata->gpio);
 else
  gpio_direction_output(pdata->gpio,
   pdata->flags & S3C24XX_LEDF_ACTLOW ? 1 : 0);



 ret = devm_led_classdev_register(&dev->dev, &led->cdev);
 if (ret < 0)
  dev_err(&dev->dev, "led_classdev_register failed\n");

 return ret;
}
