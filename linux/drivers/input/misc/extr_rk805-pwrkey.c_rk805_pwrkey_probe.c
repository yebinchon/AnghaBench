
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; char* phys; int dev; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int KEY_POWER ;
 int dev_err (int *,char*,...) ;
 int device_init_wakeup (int *,int) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_request_any_context_irq (int *,int,int ,int,char*,struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct input_dev*) ;
 int pwrkey_fall_irq ;
 int pwrkey_rise_irq ;

__attribute__((used)) static int rk805_pwrkey_probe(struct platform_device *pdev)
{
 struct input_dev *pwr;
 int fall_irq, rise_irq;
 int err;

 pwr = devm_input_allocate_device(&pdev->dev);
 if (!pwr) {
  dev_err(&pdev->dev, "Can't allocate power button\n");
  return -ENOMEM;
 }

 pwr->name = "rk805 pwrkey";
 pwr->phys = "rk805_pwrkey/input0";
 pwr->id.bustype = BUS_HOST;
 input_set_capability(pwr, EV_KEY, KEY_POWER);

 fall_irq = platform_get_irq(pdev, 0);
 if (fall_irq < 0)
  return fall_irq;

 rise_irq = platform_get_irq(pdev, 1);
 if (rise_irq < 0)
  return rise_irq;

 err = devm_request_any_context_irq(&pwr->dev, fall_irq,
        pwrkey_fall_irq,
        IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
        "rk805_pwrkey_fall", pwr);
 if (err < 0) {
  dev_err(&pdev->dev, "Can't register fall irq: %d\n", err);
  return err;
 }

 err = devm_request_any_context_irq(&pwr->dev, rise_irq,
        pwrkey_rise_irq,
        IRQF_TRIGGER_RISING | IRQF_ONESHOT,
        "rk805_pwrkey_rise", pwr);
 if (err < 0) {
  dev_err(&pdev->dev, "Can't register rise irq: %d\n", err);
  return err;
 }

 err = input_register_device(pwr);
 if (err) {
  dev_err(&pdev->dev, "Can't register power button: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, pwr);
 device_init_wakeup(&pdev->dev, 1);

 return 0;
}
