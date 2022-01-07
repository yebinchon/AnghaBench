
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct input_dev {char* name; char* phys; int keybit; int * evbit; TYPE_1__ dev; } ;
struct da9052_onkey {int work; struct da9052* da9052; struct input_dev* input; } ;
struct da9052 {TYPE_2__* dev; } ;


 int BIT_MASK (int ) ;
 int DA9052_IRQ_NONKEY ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int KEY_POWER ;
 int __set_bit (int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int da9052_free_irq (struct da9052*,int ,struct da9052_onkey*) ;
 int da9052_onkey_irq ;
 int da9052_onkey_work ;
 int da9052_request_irq (struct da9052*,int ,char*,int ,struct da9052_onkey*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct da9052* dev_get_drvdata (int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct da9052_onkey*) ;
 struct da9052_onkey* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct da9052_onkey*) ;

__attribute__((used)) static int da9052_onkey_probe(struct platform_device *pdev)
{
 struct da9052 *da9052 = dev_get_drvdata(pdev->dev.parent);
 struct da9052_onkey *onkey;
 struct input_dev *input_dev;
 int error;

 if (!da9052) {
  dev_err(&pdev->dev, "Failed to get the driver's data\n");
  return -EINVAL;
 }

 onkey = kzalloc(sizeof(*onkey), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!onkey || !input_dev) {
  dev_err(&pdev->dev, "Failed to allocate memory\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 onkey->input = input_dev;
 onkey->da9052 = da9052;
 INIT_DELAYED_WORK(&onkey->work, da9052_onkey_work);

 input_dev->name = "da9052-onkey";
 input_dev->phys = "da9052-onkey/input0";
 input_dev->dev.parent = &pdev->dev;

 input_dev->evbit[0] = BIT_MASK(EV_KEY);
 __set_bit(KEY_POWER, input_dev->keybit);

 error = da9052_request_irq(onkey->da9052, DA9052_IRQ_NONKEY, "ONKEY",
       da9052_onkey_irq, onkey);
 if (error < 0) {
  dev_err(onkey->da9052->dev,
   "Failed to register ONKEY IRQ: %d\n", error);
  goto err_free_mem;
 }

 error = input_register_device(onkey->input);
 if (error) {
  dev_err(&pdev->dev, "Unable to register input device, %d\n",
   error);
  goto err_free_irq;
 }

 platform_set_drvdata(pdev, onkey);
 return 0;

err_free_irq:
 da9052_free_irq(onkey->da9052, DA9052_IRQ_NONKEY, onkey);
 cancel_delayed_work_sync(&onkey->work);
err_free_mem:
 input_free_device(input_dev);
 kfree(onkey);

 return error;
}
