
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;
struct axp20x_pek {int irq_dbr; int irq_dbf; struct axp20x_dev* axp20x; struct input_dev* input; } ;
struct axp20x_dev {scalar_t__ variant; int regmap_irqc; } ;


 scalar_t__ AXP288_ID ;
 int ENOMEM ;
 int EV_KEY ;
 int KEY_POWER ;
 int axp20x_pek_irq ;
 int dev_err (int *,char*,int,...) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_request_any_context_irq (int *,int,int ,int ,char*,struct input_dev*) ;
 int enable_irq_wake (int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct axp20x_pek*) ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 void* regmap_irq_get_virq (int ,int) ;

__attribute__((used)) static int axp20x_pek_probe_input_device(struct axp20x_pek *axp20x_pek,
      struct platform_device *pdev)
{
 struct axp20x_dev *axp20x = axp20x_pek->axp20x;
 struct input_dev *idev;
 int error;

 axp20x_pek->irq_dbr = platform_get_irq_byname(pdev, "PEK_DBR");
 if (axp20x_pek->irq_dbr < 0)
  return axp20x_pek->irq_dbr;
 axp20x_pek->irq_dbr = regmap_irq_get_virq(axp20x->regmap_irqc,
        axp20x_pek->irq_dbr);

 axp20x_pek->irq_dbf = platform_get_irq_byname(pdev, "PEK_DBF");
 if (axp20x_pek->irq_dbf < 0)
  return axp20x_pek->irq_dbf;
 axp20x_pek->irq_dbf = regmap_irq_get_virq(axp20x->regmap_irqc,
        axp20x_pek->irq_dbf);

 axp20x_pek->input = devm_input_allocate_device(&pdev->dev);
 if (!axp20x_pek->input)
  return -ENOMEM;

 idev = axp20x_pek->input;

 idev->name = "axp20x-pek";
 idev->phys = "m1kbd/input2";
 idev->dev.parent = &pdev->dev;

 input_set_capability(idev, EV_KEY, KEY_POWER);

 input_set_drvdata(idev, axp20x_pek);

 error = devm_request_any_context_irq(&pdev->dev, axp20x_pek->irq_dbr,
          axp20x_pek_irq, 0,
          "axp20x-pek-dbr", idev);
 if (error < 0) {
  dev_err(&pdev->dev, "Failed to request dbr IRQ#%d: %d\n",
   axp20x_pek->irq_dbr, error);
  return error;
 }

 error = devm_request_any_context_irq(&pdev->dev, axp20x_pek->irq_dbf,
       axp20x_pek_irq, 0,
       "axp20x-pek-dbf", idev);
 if (error < 0) {
  dev_err(&pdev->dev, "Failed to request dbf IRQ#%d: %d\n",
   axp20x_pek->irq_dbf, error);
  return error;
 }

 error = input_register_device(idev);
 if (error) {
  dev_err(&pdev->dev, "Can't register input device: %d\n",
   error);
  return error;
 }

 if (axp20x_pek->axp20x->variant == AXP288_ID)
  enable_irq_wake(axp20x_pek->irq_dbr);

 return 0;
}
