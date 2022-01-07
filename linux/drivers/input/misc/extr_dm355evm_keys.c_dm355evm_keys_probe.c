
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int product; int version; int bustype; } ;
struct input_dev {char* name; char* phys; TYPE_1__ id; } ;
struct dm355evm_keys {struct input_dev* input; int * dev; } ;


 int BUS_I2C ;
 int DM355EVM_MSP_FIRMREV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int dev_name (int *) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct dm355evm_keys* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,int ,struct dm355evm_keys*) ;
 int dm355evm_keys ;
 int dm355evm_keys_irq ;
 int dm355evm_msp_read (int ) ;
 int input_register_device (struct input_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int sparse_keymap_setup (struct input_dev*,int ,int *) ;

__attribute__((used)) static int dm355evm_keys_probe(struct platform_device *pdev)
{
 struct dm355evm_keys *keys;
 struct input_dev *input;
 int irq;
 int error;

 keys = devm_kzalloc(&pdev->dev, sizeof (*keys), GFP_KERNEL);
 if (!keys)
  return -ENOMEM;

 input = devm_input_allocate_device(&pdev->dev);
 if (!input)
  return -ENOMEM;

 keys->dev = &pdev->dev;
 keys->input = input;

 input->name = "DM355 EVM Controls";
 input->phys = "dm355evm/input0";

 input->id.bustype = BUS_I2C;
 input->id.product = 0x0355;
 input->id.version = dm355evm_msp_read(DM355EVM_MSP_FIRMREV);

 error = sparse_keymap_setup(input, dm355evm_keys, ((void*)0));
 if (error)
  return error;




 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 error = devm_request_threaded_irq(&pdev->dev, irq,
       ((void*)0), dm355evm_keys_irq,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       dev_name(&pdev->dev), keys);
 if (error)
  return error;


 error = input_register_device(input);
 if (error)
  return error;

 return 0;
}
