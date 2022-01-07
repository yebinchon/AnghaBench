
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {int id; struct device dev; } ;
struct gpio_chip {int base; int free; int request; int owner; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_DATA ;
 scalar_t__ GPIO_DIR ;
 scalar_t__ GPIO_OUTPUT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int bgpio_init (struct gpio_chip*,struct device*,int,scalar_t__,scalar_t__,int *,int *,scalar_t__,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,int *) ;
 struct gpio_chip* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ gpio_reg_base ;
 int ls1x_gpio_free ;
 int ls1x_gpio_request ;
 int platform_set_drvdata (struct platform_device*,struct gpio_chip*) ;

__attribute__((used)) static int ls1x_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct gpio_chip *gc;
 int ret;

 gc = devm_kzalloc(dev, sizeof(*gc), GFP_KERNEL);
 if (!gc)
  return -ENOMEM;

 gpio_reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(gpio_reg_base))
  return PTR_ERR(gpio_reg_base);

 ret = bgpio_init(gc, dev, 4, gpio_reg_base + GPIO_DATA,
    gpio_reg_base + GPIO_OUTPUT, ((void*)0),
    ((void*)0), gpio_reg_base + GPIO_DIR, 0);
 if (ret)
  goto err;

 gc->owner = THIS_MODULE;
 gc->request = ls1x_gpio_request;
 gc->free = ls1x_gpio_free;
 gc->base = pdev->id * 32;

 ret = devm_gpiochip_add_data(dev, gc, ((void*)0));
 if (ret)
  goto err;

 platform_set_drvdata(pdev, gc);
 dev_info(dev, "Loongson1 GPIO driver registered\n");

 return 0;
err:
 dev_err(dev, "failed to register GPIO device\n");
 return ret;
}
