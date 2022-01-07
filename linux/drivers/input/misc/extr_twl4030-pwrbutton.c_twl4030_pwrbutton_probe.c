
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;


 int ENOMEM ;
 int EV_KEY ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int KEY_POWER ;
 int dev_err (int *,char*,...) ;
 int device_init_wakeup (int *,int) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int powerbutton_irq ;

__attribute__((used)) static int twl4030_pwrbutton_probe(struct platform_device *pdev)
{
 struct input_dev *pwr;
 int irq = platform_get_irq(pdev, 0);
 int err;

 pwr = devm_input_allocate_device(&pdev->dev);
 if (!pwr) {
  dev_err(&pdev->dev, "Can't allocate power button\n");
  return -ENOMEM;
 }

 input_set_capability(pwr, EV_KEY, KEY_POWER);
 pwr->name = "twl4030_pwrbutton";
 pwr->phys = "twl4030_pwrbutton/input0";
 pwr->dev.parent = &pdev->dev;

 err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), powerbutton_irq,
   IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
   IRQF_ONESHOT,
   "twl4030_pwrbutton", pwr);
 if (err < 0) {
  dev_err(&pdev->dev, "Can't get IRQ for pwrbutton: %d\n", err);
  return err;
 }

 err = input_register_device(pwr);
 if (err) {
  dev_err(&pdev->dev, "Can't register power button: %d\n", err);
  return err;
 }

 device_init_wakeup(&pdev->dev, 1);

 return 0;
}
