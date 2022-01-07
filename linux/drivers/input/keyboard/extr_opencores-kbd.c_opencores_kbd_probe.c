
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct opencores_kbd {int* keycodes; int addr; struct input_dev* input; } ;
struct TYPE_2__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {char* phys; int* keycode; int keycodesize; int keycodemax; int keybit; int evbit; TYPE_1__ id; int name; } ;


 int ARRAY_SIZE (int*) ;
 int BUS_HOST ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_RESERVED ;
 int PTR_ERR (int ) ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int,int ) ;
 int dev_err (int *,char*,...) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct opencores_kbd* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int *,int ,int ,struct opencores_kbd*) ;
 int input_register_device (struct input_dev*) ;
 int opencores_kbd_isr ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int opencores_kbd_probe(struct platform_device *pdev)
{
 struct input_dev *input;
 struct opencores_kbd *opencores_kbd;
 struct resource *res;
 int irq, i, error;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "missing board memory resource\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EINVAL;

 opencores_kbd = devm_kzalloc(&pdev->dev, sizeof(*opencores_kbd),
         GFP_KERNEL);
 if (!opencores_kbd)
  return -ENOMEM;

 input = devm_input_allocate_device(&pdev->dev);
 if (!input) {
  dev_err(&pdev->dev, "failed to allocate input device\n");
  return -ENOMEM;
 }

 opencores_kbd->input = input;

 opencores_kbd->addr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(opencores_kbd->addr))
  return PTR_ERR(opencores_kbd->addr);

 input->name = pdev->name;
 input->phys = "opencores-kbd/input0";

 input->id.bustype = BUS_HOST;
 input->id.vendor = 0x0001;
 input->id.product = 0x0001;
 input->id.version = 0x0100;

 input->keycode = opencores_kbd->keycodes;
 input->keycodesize = sizeof(opencores_kbd->keycodes[0]);
 input->keycodemax = ARRAY_SIZE(opencores_kbd->keycodes);

 __set_bit(EV_KEY, input->evbit);

 for (i = 0; i < ARRAY_SIZE(opencores_kbd->keycodes); i++) {




  opencores_kbd->keycodes[i] = i;
  __set_bit(opencores_kbd->keycodes[i], input->keybit);
 }
 __clear_bit(KEY_RESERVED, input->keybit);

 error = devm_request_irq(&pdev->dev, irq, &opencores_kbd_isr,
     IRQF_TRIGGER_RISING,
     pdev->name, opencores_kbd);
 if (error) {
  dev_err(&pdev->dev, "unable to claim irq %d\n", irq);
  return error;
 }

 error = input_register_device(input);
 if (error) {
  dev_err(&pdev->dev, "unable to register input device\n");
  return error;
 }

 return 0;
}
