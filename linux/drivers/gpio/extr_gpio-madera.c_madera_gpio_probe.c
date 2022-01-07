
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct madera_pdata {int gpio_base; } ;
struct TYPE_8__ {int base; int ngpio; int parent; } ;
struct madera_gpio {TYPE_1__ gpio_chip; struct madera* madera; } ;
struct madera {int type; struct madera_pdata pdata; } ;




 int CS47L15_NUM_GPIOS ;

 int CS47L35_NUM_GPIOS ;

 int CS47L85_NUM_GPIOS ;

 int CS47L90_NUM_GPIOS ;


 int CS47L92_NUM_GPIOS ;

 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int dev_dbg (TYPE_3__*,char*,int) ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct madera* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_3__*,TYPE_1__*,struct madera_gpio*) ;
 struct madera_gpio* devm_kzalloc (TYPE_3__*,int,int ) ;
 int gpiochip_add_pin_range (TYPE_1__*,char*,int ,int ,int ) ;
 TYPE_1__ madera_gpio_chip ;

__attribute__((used)) static int madera_gpio_probe(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);
 struct madera_pdata *pdata = &madera->pdata;
 struct madera_gpio *madera_gpio;
 int ret;

 madera_gpio = devm_kzalloc(&pdev->dev, sizeof(*madera_gpio),
       GFP_KERNEL);
 if (!madera_gpio)
  return -ENOMEM;

 madera_gpio->madera = madera;


 madera_gpio->gpio_chip = madera_gpio_chip;
 madera_gpio->gpio_chip.parent = pdev->dev.parent;

 switch (madera->type) {
 case 135:
  madera_gpio->gpio_chip.ngpio = CS47L15_NUM_GPIOS;
  break;
 case 134:
  madera_gpio->gpio_chip.ngpio = CS47L35_NUM_GPIOS;
  break;
 case 133:
 case 128:
  madera_gpio->gpio_chip.ngpio = CS47L85_NUM_GPIOS;
  break;
 case 132:
 case 131:
  madera_gpio->gpio_chip.ngpio = CS47L90_NUM_GPIOS;
  break;
 case 136:
 case 130:
 case 129:
  madera_gpio->gpio_chip.ngpio = CS47L92_NUM_GPIOS;
  break;
 default:
  dev_err(&pdev->dev, "Unknown chip variant %d\n", madera->type);
  return -EINVAL;
 }


 if (pdata->gpio_base)
  madera_gpio->gpio_chip.base = pdata->gpio_base;
 else
  madera_gpio->gpio_chip.base = -1;

 ret = devm_gpiochip_add_data(&pdev->dev,
         &madera_gpio->gpio_chip,
         madera_gpio);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }
 ret = gpiochip_add_pin_range(&madera_gpio->gpio_chip, "madera-pinctrl",
         0, 0, madera_gpio->gpio_chip.ngpio);
 if (ret) {
  dev_dbg(&pdev->dev, "Failed to add pin range (%d)\n", ret);
  return ret;
 }

 return 0;
}
