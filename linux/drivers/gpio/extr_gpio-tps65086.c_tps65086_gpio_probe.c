
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct tps65086_gpio {TYPE_1__ chip; TYPE_4__* tps; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_3__*,char*,int) ;
 TYPE_4__* dev_get_drvdata (int ) ;
 struct tps65086_gpio* devm_kzalloc (TYPE_3__*,int,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct tps65086_gpio*) ;
 int platform_set_drvdata (struct platform_device*,struct tps65086_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int tps65086_gpio_probe(struct platform_device *pdev)
{
 struct tps65086_gpio *gpio;
 int ret;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 platform_set_drvdata(pdev, gpio);

 gpio->tps = dev_get_drvdata(pdev->dev.parent);
 gpio->chip = template_chip;
 gpio->chip.parent = gpio->tps->dev;

 ret = gpiochip_add_data(&gpio->chip, gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 return 0;
}
