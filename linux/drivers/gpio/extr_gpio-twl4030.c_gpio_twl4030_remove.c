
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_gpio_platform_data {int (* teardown ) (int *,int ,int ) ;} ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; } ;
struct gpio_twl4030_priv {TYPE_1__ gpio_chip; } ;


 int EIO ;
 int TWL4030_GPIO_MAX ;
 int WARN_ON (int) ;
 int dev_dbg (int *,char*,int) ;
 struct twl4030_gpio_platform_data* dev_get_platdata (int *) ;
 int gpiochip_remove (TYPE_1__*) ;
 scalar_t__ is_module () ;
 struct gpio_twl4030_priv* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *,int ,int ) ;

__attribute__((used)) static int gpio_twl4030_remove(struct platform_device *pdev)
{
 struct twl4030_gpio_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct gpio_twl4030_priv *priv = platform_get_drvdata(pdev);
 int status;

 if (pdata && pdata->teardown) {
  status = pdata->teardown(&pdev->dev, priv->gpio_chip.base,
      TWL4030_GPIO_MAX);
  if (status) {
   dev_dbg(&pdev->dev, "teardown --> %d\n", status);
   return status;
  }
 }

 gpiochip_remove(&priv->gpio_chip);

 if (is_module())
  return 0;


 WARN_ON(1);
 return -EIO;
}
