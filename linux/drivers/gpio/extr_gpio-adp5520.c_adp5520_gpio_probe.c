
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {scalar_t__ id; TYPE_1__ dev; int name; } ;
struct gpio_chip {int can_sleep; int ngpio; int owner; int label; int base; int set; int get; int direction_output; int direction_input; } ;
struct adp5520_gpio_platform_data {int gpio_en_mask; unsigned char gpio_pullup_mask; int gpio_start; } ;
struct adp5520_gpio {int* lut; struct gpio_chip gpio_chip; int master; } ;


 unsigned char ADP5520_C3_MODE ;
 int ADP5520_GPIO_C3 ;
 int ADP5520_GPIO_CFG_1 ;
 int ADP5520_GPIO_PULLUP ;
 int ADP5520_GPIO_R3 ;
 int ADP5520_LED_CONTROL ;
 int ADP5520_MAXGPIOS ;
 unsigned char ADP5520_R3_MODE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ID_ADP5520 ;
 int THIS_MODULE ;
 int adp5520_clr_bits (int ,int ,int) ;
 int adp5520_gpio_direction_input ;
 int adp5520_gpio_direction_output ;
 int adp5520_gpio_get_value ;
 int adp5520_gpio_set_value ;
 int adp5520_set_bits (int ,int ,unsigned char) ;
 int dev_err (TYPE_1__*,char*) ;
 struct adp5520_gpio_platform_data* dev_get_platdata (TYPE_1__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,struct gpio_chip*,struct adp5520_gpio*) ;
 struct adp5520_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct adp5520_gpio*) ;

__attribute__((used)) static int adp5520_gpio_probe(struct platform_device *pdev)
{
 struct adp5520_gpio_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct adp5520_gpio *dev;
 struct gpio_chip *gc;
 int ret, i, gpios;
 unsigned char ctl_mask = 0;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "missing platform data\n");
  return -ENODEV;
 }

 if (pdev->id != ID_ADP5520) {
  dev_err(&pdev->dev, "only ADP5520 supports GPIO\n");
  return -ENODEV;
 }

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 dev->master = pdev->dev.parent;

 for (gpios = 0, i = 0; i < ADP5520_MAXGPIOS; i++)
  if (pdata->gpio_en_mask & (1 << i))
   dev->lut[gpios++] = 1 << i;

 if (gpios < 1) {
  ret = -EINVAL;
  goto err;
 }

 gc = &dev->gpio_chip;
 gc->direction_input = adp5520_gpio_direction_input;
 gc->direction_output = adp5520_gpio_direction_output;
 gc->get = adp5520_gpio_get_value;
 gc->set = adp5520_gpio_set_value;
 gc->can_sleep = 1;

 gc->base = pdata->gpio_start;
 gc->ngpio = gpios;
 gc->label = pdev->name;
 gc->owner = THIS_MODULE;

 ret = adp5520_clr_bits(dev->master, ADP5520_GPIO_CFG_1,
  pdata->gpio_en_mask);

 if (pdata->gpio_en_mask & ADP5520_GPIO_C3)
  ctl_mask |= ADP5520_C3_MODE;

 if (pdata->gpio_en_mask & ADP5520_GPIO_R3)
  ctl_mask |= ADP5520_R3_MODE;

 if (ctl_mask)
  ret = adp5520_set_bits(dev->master, ADP5520_LED_CONTROL,
   ctl_mask);

 ret |= adp5520_set_bits(dev->master, ADP5520_GPIO_PULLUP,
  pdata->gpio_pullup_mask);

 if (ret) {
  dev_err(&pdev->dev, "failed to write\n");
  goto err;
 }

 ret = devm_gpiochip_add_data(&pdev->dev, &dev->gpio_chip, dev);
 if (ret)
  goto err;

 platform_set_drvdata(pdev, dev);
 return 0;

err:
 return ret;
}
