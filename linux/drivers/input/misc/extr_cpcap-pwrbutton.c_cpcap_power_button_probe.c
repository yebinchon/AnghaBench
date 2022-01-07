
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct cpcap_power_button {TYPE_2__* idev; TYPE_4__* dev; int regmap; } ;
struct TYPE_10__ {TYPE_4__* parent; } ;
struct TYPE_11__ {char* name; char* phys; TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int KEY_POWER ;
 int dev_err (TYPE_4__*,char*,int) ;
 int dev_get_regmap (int ,int *) ;
 int device_init_wakeup (TYPE_4__*,int) ;
 TYPE_2__* devm_input_allocate_device (TYPE_4__*) ;
 struct cpcap_power_button* devm_kmalloc (TYPE_4__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_4__*,int,int *,int ,int ,char*,struct cpcap_power_button*) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int powerbutton_irq ;

__attribute__((used)) static int cpcap_power_button_probe(struct platform_device *pdev)
{
 struct cpcap_power_button *button;
 int irq = platform_get_irq(pdev, 0);
 int err;

 button = devm_kmalloc(&pdev->dev, sizeof(*button), GFP_KERNEL);
 if (!button)
  return -ENOMEM;

 button->idev = devm_input_allocate_device(&pdev->dev);
 if (!button->idev)
  return -ENOMEM;

 button->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!button->regmap)
  return -ENODEV;

 button->dev = &pdev->dev;

 button->idev->name = "cpcap-pwrbutton";
 button->idev->phys = "cpcap-pwrbutton/input0";
 button->idev->dev.parent = button->dev;
 input_set_capability(button->idev, EV_KEY, KEY_POWER);

 err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
  powerbutton_irq, IRQF_ONESHOT, "cpcap_pwrbutton", button);
 if (err < 0) {
  dev_err(&pdev->dev, "IRQ request failed: %d\n", err);
  return err;
 }

 err = input_register_device(button->idev);
 if (err) {
  dev_err(&pdev->dev, "Input register failed: %d\n", err);
  return err;
 }

 device_init_wakeup(&pdev->dev, 1);

 return 0;
}
