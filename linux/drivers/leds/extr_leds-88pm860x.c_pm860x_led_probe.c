
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct pm860x_led_pdata {int iset; } ;
struct TYPE_6__ {int (* brightness_set_blocking ) (TYPE_1__*,int ) ;int name; } ;
struct pm860x_led {int port; TYPE_1__ cdev; int lock; int name; scalar_t__ current_brightness; int iset; int i2c; struct pm860x_chip* chip; void* blink_mask; int reg_blink; int reg_control; } ;
struct pm860x_chip {scalar_t__ id; int dev; int companion; int client; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {int id; TYPE_3__ dev; } ;


 scalar_t__ CHIP_PM8606 ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_REG ;
 void* LED1_BLINK_EN ;
 void* LED2_BLINK_EN ;
 int MFD_NAME_SIZE ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct pm860x_chip* dev_get_drvdata (int ) ;
 struct pm860x_led_pdata* dev_get_platdata (TYPE_3__*) ;
 struct pm860x_led* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_led_classdev_register (int ,TYPE_1__*) ;
 int memset (int ,int ,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 scalar_t__ pm860x_led_dt_init (struct platform_device*,struct pm860x_led*) ;
 int pm860x_led_set (TYPE_1__*,int ) ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int pm860x_led_probe(struct platform_device *pdev)
{
 struct pm860x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm860x_led_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct pm860x_led *data;
 struct resource *res;
 int ret = 0;

 data = devm_kzalloc(&pdev->dev, sizeof(struct pm860x_led), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;
 res = platform_get_resource_byname(pdev, IORESOURCE_REG, "control");
 if (!res) {
  dev_err(&pdev->dev, "No REG resource for control\n");
  return -ENXIO;
 }
 data->reg_control = res->start;
 res = platform_get_resource_byname(pdev, IORESOURCE_REG, "blink");
 if (!res) {
  dev_err(&pdev->dev, "No REG resource for blink\n");
  return -ENXIO;
 }
 data->reg_blink = res->start;
 memset(data->name, 0, MFD_NAME_SIZE);
 switch (pdev->id) {
 case 0:
  data->blink_mask = LED1_BLINK_EN;
  sprintf(data->name, "led0-red");
  break;
 case 1:
  data->blink_mask = LED1_BLINK_EN;
  sprintf(data->name, "led0-green");
  break;
 case 2:
  data->blink_mask = LED1_BLINK_EN;
  sprintf(data->name, "led0-blue");
  break;
 case 3:
  data->blink_mask = LED2_BLINK_EN;
  sprintf(data->name, "led1-red");
  break;
 case 4:
  data->blink_mask = LED2_BLINK_EN;
  sprintf(data->name, "led1-green");
  break;
 case 5:
  data->blink_mask = LED2_BLINK_EN;
  sprintf(data->name, "led1-blue");
  break;
 }
 data->chip = chip;
 data->i2c = (chip->id == CHIP_PM8606) ? chip->client : chip->companion;
 data->port = pdev->id;
 if (pm860x_led_dt_init(pdev, data))
  if (pdata)
   data->iset = pdata->iset;

 data->current_brightness = 0;
 data->cdev.name = data->name;
 data->cdev.brightness_set_blocking = pm860x_led_set;
 mutex_init(&data->lock);

 ret = devm_led_classdev_register(chip->dev, &data->cdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register LED: %d\n", ret);
  return ret;
 }
 pm860x_led_set(&data->cdev, 0);
 return 0;
}
