
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stpmic1_onkey {scalar_t__ irq_falling; scalar_t__ irq_rising; struct input_dev* input_dev; } ;
struct stpmic1 {int regmap; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct input_dev {char* name; char* phys; } ;


 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int KEY_POWER ;
 int PADS_PULL_CR ;
 int PKEY_TURNOFF_CR ;
 unsigned int PONKEY_CC_FLAG_CLEAR ;
 unsigned int PONKEY_PU_INACTIVE ;
 unsigned int PONKEY_PWR_OFF ;
 unsigned int PONKEY_TURNOFF_MASK ;
 int PONKEY_TURNOFF_TIMER_MASK ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct stpmic1* dev_get_drvdata (int ) ;
 int dev_name (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 scalar_t__ device_property_present (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,unsigned int*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct stpmic1_onkey* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct stpmic1_onkey*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int onkey_falling_irq ;
 int onkey_rising_irq ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct stpmic1_onkey*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int stpmic1_onkey_probe(struct platform_device *pdev)
{
 struct stpmic1 *pmic = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct input_dev *input_dev;
 struct stpmic1_onkey *onkey;
 unsigned int val, reg = 0;
 int error;

 onkey = devm_kzalloc(dev, sizeof(*onkey), GFP_KERNEL);
 if (!onkey)
  return -ENOMEM;

 onkey->irq_falling = platform_get_irq_byname(pdev, "onkey-falling");
 if (onkey->irq_falling < 0)
  return onkey->irq_falling;

 onkey->irq_rising = platform_get_irq_byname(pdev, "onkey-rising");
 if (onkey->irq_rising < 0)
  return onkey->irq_rising;

 if (!device_property_read_u32(dev, "power-off-time-sec", &val)) {
  if (val > 0 && val <= 16) {
   dev_dbg(dev, "power-off-time=%d seconds\n", val);
   reg |= PONKEY_PWR_OFF;
   reg |= ((16 - val) & PONKEY_TURNOFF_TIMER_MASK);
  } else {
   dev_err(dev, "power-off-time-sec out of range\n");
   return -EINVAL;
  }
 }

 if (device_property_present(dev, "st,onkey-clear-cc-flag"))
  reg |= PONKEY_CC_FLAG_CLEAR;

 error = regmap_update_bits(pmic->regmap, PKEY_TURNOFF_CR,
       PONKEY_TURNOFF_MASK, reg);
 if (error) {
  dev_err(dev, "PKEY_TURNOFF_CR write failed: %d\n", error);
  return error;
 }

 if (device_property_present(dev, "st,onkey-pu-inactive")) {
  error = regmap_update_bits(pmic->regmap, PADS_PULL_CR,
        PONKEY_PU_INACTIVE,
        PONKEY_PU_INACTIVE);
  if (error) {
   dev_err(dev, "ONKEY Pads configuration failed: %d\n",
    error);
   return error;
  }
 }

 input_dev = devm_input_allocate_device(dev);
 if (!input_dev) {
  dev_err(dev, "Can't allocate Pwr Onkey Input Device\n");
  return -ENOMEM;
 }

 input_dev->name = "pmic_onkey";
 input_dev->phys = "pmic_onkey/input0";

 input_set_capability(input_dev, EV_KEY, KEY_POWER);

 onkey->input_dev = input_dev;


 error = devm_request_threaded_irq(dev, onkey->irq_falling, ((void*)0),
       onkey_falling_irq, IRQF_ONESHOT,
       dev_name(dev), onkey);
 if (error) {
  dev_err(dev, "Can't get IRQ Onkey Falling: %d\n", error);
  return error;
 }

 error = devm_request_threaded_irq(dev, onkey->irq_rising, ((void*)0),
       onkey_rising_irq, IRQF_ONESHOT,
       dev_name(dev), onkey);
 if (error) {
  dev_err(dev, "Can't get IRQ Onkey Rising: %d\n", error);
  return error;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(dev, "Can't register power button: %d\n", error);
  return error;
 }

 platform_set_drvdata(pdev, onkey);
 device_init_wakeup(dev, 1);

 return 0;
}
