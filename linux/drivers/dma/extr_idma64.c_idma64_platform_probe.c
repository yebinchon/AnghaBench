
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct idma64_chip {scalar_t__ irq; struct device* sysdev; struct device* dev; int regs; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct idma64_chip* devm_kzalloc (struct device*,int,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int idma64_probe (struct idma64_chip*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct idma64_chip*) ;

__attribute__((used)) static int idma64_platform_probe(struct platform_device *pdev)
{
 struct idma64_chip *chip;
 struct device *dev = &pdev->dev;
 struct device *sysdev = dev->parent;
 struct resource *mem;
 int ret;

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->irq = platform_get_irq(pdev, 0);
 if (chip->irq < 0)
  return chip->irq;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 chip->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(chip->regs))
  return PTR_ERR(chip->regs);

 ret = dma_coerce_mask_and_coherent(sysdev, DMA_BIT_MASK(64));
 if (ret)
  return ret;

 chip->dev = dev;
 chip->sysdev = sysdev;

 ret = idma64_probe(chip);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, chip);
 return 0;
}
