
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct irqc_priv {int number_of_irqs; int irq_domain; TYPE_5__* irq; TYPE_4__* gc; scalar_t__ cpu_int_base; scalar_t__ iomem; struct device* dev; } ;
struct TYPE_10__ {int hw_irq; int requested_irq; struct irqc_priv* p; } ;
struct TYPE_9__ {TYPE_3__* chip_types; scalar_t__ reg_base; } ;
struct TYPE_7__ {int flags; int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; struct device* parent_device; } ;
struct TYPE_6__ {int disable; int enable; } ;
struct TYPE_8__ {TYPE_2__ chip; TYPE_1__ regs; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQC_EN_SET ;
 int IRQC_EN_STS ;
 scalar_t__ IRQC_INT_CPU_BASE (int ) ;
 int IRQC_IRQ_MAX ;
 int IRQ_GC_INIT_NESTED_LOCK ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int) ;
 char* dev_name (struct device*) ;
 struct irqc_priv* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ devm_request_irq (struct device*,int ,int ,int ,char const*,TYPE_5__*) ;
 int handle_level_irq ;
 int irq_alloc_domain_generic_chips (int ,int,int,char*,int ,int ,int ,int ) ;
 int irq_domain_add_linear (int ,int,int *,struct irqc_priv*) ;
 int irq_domain_remove (int ) ;
 int irq_gc_mask_disable_reg ;
 int irq_gc_unmask_enable_reg ;
 int irq_generic_chip_ops ;
 TYPE_4__* irq_get_domain_generic_chip (int ,int ) ;
 int irqc_irq_handler ;
 int irqc_irq_set_type ;
 int irqc_irq_set_wake ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct irqc_priv*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static int irqc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const char *name = dev_name(dev);
 struct irqc_priv *p;
 struct resource *irq;
 int ret;
 int k;

 p = devm_kzalloc(dev, sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 p->dev = dev;
 platform_set_drvdata(pdev, p);

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);


 for (k = 0; k < IRQC_IRQ_MAX; k++) {
  irq = platform_get_resource(pdev, IORESOURCE_IRQ, k);
  if (!irq)
   break;

  p->irq[k].p = p;
  p->irq[k].hw_irq = k;
  p->irq[k].requested_irq = irq->start;
 }

 p->number_of_irqs = k;
 if (p->number_of_irqs < 1) {
  dev_err(dev, "not enough IRQ resources\n");
  ret = -EINVAL;
  goto err_runtime_pm_disable;
 }


 p->iomem = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(p->iomem)) {
  ret = PTR_ERR(p->iomem);
  goto err_runtime_pm_disable;
 }

 p->cpu_int_base = p->iomem + IRQC_INT_CPU_BASE(0);

 p->irq_domain = irq_domain_add_linear(dev->of_node, p->number_of_irqs,
           &irq_generic_chip_ops, p);
 if (!p->irq_domain) {
  ret = -ENXIO;
  dev_err(dev, "cannot initialize irq domain\n");
  goto err_runtime_pm_disable;
 }

 ret = irq_alloc_domain_generic_chips(p->irq_domain, p->number_of_irqs,
          1, "irqc", handle_level_irq,
          0, 0, IRQ_GC_INIT_NESTED_LOCK);
 if (ret) {
  dev_err(dev, "cannot allocate generic chip\n");
  goto err_remove_domain;
 }

 p->gc = irq_get_domain_generic_chip(p->irq_domain, 0);
 p->gc->reg_base = p->cpu_int_base;
 p->gc->chip_types[0].regs.enable = IRQC_EN_SET;
 p->gc->chip_types[0].regs.disable = IRQC_EN_STS;
 p->gc->chip_types[0].chip.parent_device = dev;
 p->gc->chip_types[0].chip.irq_mask = irq_gc_mask_disable_reg;
 p->gc->chip_types[0].chip.irq_unmask = irq_gc_unmask_enable_reg;
 p->gc->chip_types[0].chip.irq_set_type = irqc_irq_set_type;
 p->gc->chip_types[0].chip.irq_set_wake = irqc_irq_set_wake;
 p->gc->chip_types[0].chip.flags = IRQCHIP_MASK_ON_SUSPEND;


 for (k = 0; k < p->number_of_irqs; k++) {
  if (devm_request_irq(dev, p->irq[k].requested_irq,
         irqc_irq_handler, 0, name, &p->irq[k])) {
   dev_err(dev, "failed to request IRQ\n");
   ret = -ENOENT;
   goto err_remove_domain;
  }
 }

 dev_info(dev, "driving %d irqs\n", p->number_of_irqs);

 return 0;

err_remove_domain:
 irq_domain_remove(p->irq_domain);
err_runtime_pm_disable:
 pm_runtime_put(dev);
 pm_runtime_disable(dev);
 return ret;
}
