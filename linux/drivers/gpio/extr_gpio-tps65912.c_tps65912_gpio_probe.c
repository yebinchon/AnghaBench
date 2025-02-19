
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct tps65912_gpio {TYPE_1__ gpio_chip; void* tps; } ;
struct tps65912 {int dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 void* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct tps65912_gpio*) ;
 struct tps65912_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tps65912_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int tps65912_gpio_probe(struct platform_device *pdev)
{
 struct tps65912 *tps = dev_get_drvdata(pdev->dev.parent);
 struct tps65912_gpio *gpio;
 int ret;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 gpio->tps = dev_get_drvdata(pdev->dev.parent);
 gpio->gpio_chip = template_chip;
 gpio->gpio_chip.parent = tps->dev;

 ret = devm_gpiochip_add_data(&pdev->dev, &gpio->gpio_chip,
         gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, gpio);

 return 0;
}
