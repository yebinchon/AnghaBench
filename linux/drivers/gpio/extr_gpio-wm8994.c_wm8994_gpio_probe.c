
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wm8994_pdata {int gpio_base; } ;
struct TYPE_6__ {int base; TYPE_2__* parent; int ngpio; } ;
struct wm8994_gpio {TYPE_1__ gpio_chip; struct wm8994* wm8994; } ;
struct wm8994 {int dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WM8994_GPIO_MAX ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct wm8994* dev_get_drvdata (int ) ;
 struct wm8994_pdata* dev_get_platdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct wm8994_gpio*) ;
 struct wm8994_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm8994_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int wm8994_gpio_probe(struct platform_device *pdev)
{
 struct wm8994 *wm8994 = dev_get_drvdata(pdev->dev.parent);
 struct wm8994_pdata *pdata = dev_get_platdata(wm8994->dev);
 struct wm8994_gpio *wm8994_gpio;
 int ret;

 wm8994_gpio = devm_kzalloc(&pdev->dev, sizeof(*wm8994_gpio),
       GFP_KERNEL);
 if (wm8994_gpio == ((void*)0))
  return -ENOMEM;

 wm8994_gpio->wm8994 = wm8994;
 wm8994_gpio->gpio_chip = template_chip;
 wm8994_gpio->gpio_chip.ngpio = WM8994_GPIO_MAX;
 wm8994_gpio->gpio_chip.parent = &pdev->dev;
 if (pdata && pdata->gpio_base)
  wm8994_gpio->gpio_chip.base = pdata->gpio_base;
 else
  wm8994_gpio->gpio_chip.base = -1;

 ret = devm_gpiochip_add_data(&pdev->dev, &wm8994_gpio->gpio_chip,
         wm8994_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n",
   ret);
  return ret;
 }

 platform_set_drvdata(pdev, wm8994_gpio);

 return ret;
}
