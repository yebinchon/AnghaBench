
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pm80x_onkey_info {scalar_t__ irq; TYPE_3__* idev; struct pm80x_chip* pm80x; int map; } ;
struct pm80x_chip {int regmap; } ;
struct TYPE_11__ {int parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_9__ {TYPE_6__* parent; } ;
struct TYPE_8__ {int bustype; } ;
struct TYPE_10__ {char* name; char* phys; int keybit; int * evbit; TYPE_2__ dev; TYPE_1__ id; } ;


 int BIT_MASK (int ) ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int KEY_POWER ;
 int PM800_LONG_ONKEY_EN ;
 int PM800_LONKEY_PRESS_TIME ;
 int PM800_LONKEY_PRESS_TIME_MASK ;
 int PM800_RTC_MISC3 ;
 int PM800_RTC_MISC4 ;
 int __set_bit (int ,int ) ;
 int dev_err (TYPE_6__*,char*,...) ;
 struct pm80x_chip* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_6__*,int) ;
 TYPE_3__* input_allocate_device () ;
 int input_free_device (TYPE_3__*) ;
 int input_register_device (TYPE_3__*) ;
 int kfree (struct pm80x_onkey_info*) ;
 struct pm80x_onkey_info* kzalloc (int,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pm80x_onkey_info*) ;
 int pm80x_free_irq (struct pm80x_chip*,scalar_t__,struct pm80x_onkey_info*) ;
 int pm80x_onkey_handler ;
 int pm80x_request_irq (struct pm80x_chip*,scalar_t__,int ,int ,char*,struct pm80x_onkey_info*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pm80x_onkey_probe(struct platform_device *pdev)
{

 struct pm80x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm80x_onkey_info *info;
 int err;

 info = kzalloc(sizeof(struct pm80x_onkey_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->pm80x = chip;

 info->irq = platform_get_irq(pdev, 0);
 if (info->irq < 0) {
  err = -EINVAL;
  goto out;
 }

 info->map = info->pm80x->regmap;
 if (!info->map) {
  dev_err(&pdev->dev, "no regmap!\n");
  err = -EINVAL;
  goto out;
 }

 info->idev = input_allocate_device();
 if (!info->idev) {
  dev_err(&pdev->dev, "Failed to allocate input dev\n");
  err = -ENOMEM;
  goto out;
 }

 info->idev->name = "88pm80x_on";
 info->idev->phys = "88pm80x_on/input0";
 info->idev->id.bustype = BUS_I2C;
 info->idev->dev.parent = &pdev->dev;
 info->idev->evbit[0] = BIT_MASK(EV_KEY);
 __set_bit(KEY_POWER, info->idev->keybit);

 err = pm80x_request_irq(info->pm80x, info->irq, pm80x_onkey_handler,
         IRQF_ONESHOT, "onkey", info);
 if (err < 0) {
  dev_err(&pdev->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq, err);
  goto out_reg;
 }

 err = input_register_device(info->idev);
 if (err) {
  dev_err(&pdev->dev, "Can't register input device: %d\n", err);
  goto out_irq;
 }

 platform_set_drvdata(pdev, info);


 regmap_update_bits(info->map, PM800_RTC_MISC4, PM800_LONG_ONKEY_EN,
      PM800_LONG_ONKEY_EN);

 regmap_update_bits(info->map, PM800_RTC_MISC3,
      PM800_LONKEY_PRESS_TIME_MASK,
      PM800_LONKEY_PRESS_TIME);

 device_init_wakeup(&pdev->dev, 1);
 return 0;

out_irq:
 pm80x_free_irq(info->pm80x, info->irq, info);
out_reg:
 input_free_device(info->idev);
out:
 kfree(info);
 return err;
}
