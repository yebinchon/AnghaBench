
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sta2x11_gpio_pdata {int * pinconfig; } ;
struct platform_device {int dev; } ;
struct pci_dev {int irq; int dev; } ;
struct gsta_gpio {int irq_base; int gpio; int lock; TYPE_1__** regs; TYPE_1__* reg_base; int * dev; } ;
struct TYPE_4__ {int ic; int fimsc; int rimsc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GSTA_NR_BLOCKS ;
 int GSTA_NR_GPIO ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int KBUILD_MODNAME ;
 int NUMA_NO_NODE ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (int *,char*,...) ;
 struct sta2x11_gpio_pdata* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int) ;
 int devm_gpiochip_add_data (int *,int *,struct gsta_gpio*) ;
 int devm_irq_alloc_descs (int *,int,int,int,int ) ;
 struct gsta_gpio* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct gsta_gpio*) ;
 int gsta_alloc_irq_chip (struct gsta_gpio*) ;
 int gsta_gpio_handler ;
 int gsta_gpio_setup (struct gsta_gpio*) ;
 int gsta_set_config (struct gsta_gpio*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gsta_gpio*) ;
 int pr_debug (char*,struct sta2x11_gpio_pdata*) ;
 int spin_lock_init (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static int gsta_probe(struct platform_device *dev)
{
 int i, err;
 struct pci_dev *pdev;
 struct sta2x11_gpio_pdata *gpio_pdata;
 struct gsta_gpio *chip;

 pdev = *(struct pci_dev **)dev_get_platdata(&dev->dev);
 gpio_pdata = dev_get_platdata(&pdev->dev);

 if (gpio_pdata == ((void*)0))
  dev_err(&dev->dev, "no gpio config\n");
 pr_debug("gpio config: %p\n", gpio_pdata);

 chip = devm_kzalloc(&dev->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;
 chip->dev = &dev->dev;
 chip->reg_base = devm_platform_ioremap_resource(dev, 0);
 if (IS_ERR(chip->reg_base))
  return PTR_ERR(chip->reg_base);

 for (i = 0; i < GSTA_NR_BLOCKS; i++) {
  chip->regs[i] = chip->reg_base + i * 4096;

  writel(0, &chip->regs[i]->rimsc);
  writel(0, &chip->regs[i]->fimsc);
  writel(~0, &chip->regs[i]->ic);
 }
 spin_lock_init(&chip->lock);
 gsta_gpio_setup(chip);
 if (gpio_pdata)
  for (i = 0; i < GSTA_NR_GPIO; i++)
   gsta_set_config(chip, i, gpio_pdata->pinconfig[i]);


 err = devm_irq_alloc_descs(&dev->dev, -1, 384,
       GSTA_NR_GPIO, NUMA_NO_NODE);
 if (err < 0) {
  dev_warn(&dev->dev, "sta2x11 gpio: Can't get irq base (%i)\n",
    -err);
  return err;
 }
 chip->irq_base = err;

 err = gsta_alloc_irq_chip(chip);
 if (err)
  return err;

 err = devm_request_irq(&dev->dev, pdev->irq, gsta_gpio_handler,
          IRQF_SHARED, KBUILD_MODNAME, chip);
 if (err < 0) {
  dev_err(&dev->dev, "sta2x11 gpio: Can't request irq (%i)\n",
   -err);
  return err;
 }

 err = devm_gpiochip_add_data(&dev->dev, &chip->gpio, chip);
 if (err < 0) {
  dev_err(&dev->dev, "sta2x11 gpio: Can't register (%i)\n",
   -err);
  return err;
 }

 platform_set_drvdata(dev, chip);
 return 0;
}
