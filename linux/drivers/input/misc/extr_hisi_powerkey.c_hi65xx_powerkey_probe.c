
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct input_dev {char* phys; char* name; } ;
struct TYPE_3__ {int name; int handler; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int EV_KEY ;
 int IRQF_ONESHOT ;
 int KEY_POWER ;
 int KEY_RESTART ;
 int dev_err (struct device*,char*,...) ;
 int device_init_wakeup (struct device*,int) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int devm_request_any_context_irq (struct device*,int,int ,int ,int ,struct input_dev*) ;
 TYPE_1__* hi65xx_irq_info ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int platform_get_irq_byname (struct platform_device*,int ) ;

__attribute__((used)) static int hi65xx_powerkey_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct input_dev *input;
 int irq, i, error;

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "failed to allocate input device\n");
  return -ENOMEM;
 }

 input->phys = "hisi_on/input0";
 input->name = "HISI 65xx PowerOn Key";

 input_set_capability(input, EV_KEY, KEY_POWER);
 input_set_capability(input, EV_KEY, KEY_RESTART);

 for (i = 0; i < ARRAY_SIZE(hi65xx_irq_info); i++) {

  irq = platform_get_irq_byname(pdev, hi65xx_irq_info[i].name);
  if (irq < 0)
   return irq;

  error = devm_request_any_context_irq(dev, irq,
           hi65xx_irq_info[i].handler,
           IRQF_ONESHOT,
           hi65xx_irq_info[i].name,
           input);
  if (error < 0) {
   dev_err(dev, "couldn't request irq %s: %d\n",
    hi65xx_irq_info[i].name, error);
   return error;
  }
 }

 error = input_register_device(input);
 if (error) {
  dev_err(dev, "failed to register input device: %d\n", error);
  return error;
 }

 device_init_wakeup(dev, 1);

 return 0;
}
