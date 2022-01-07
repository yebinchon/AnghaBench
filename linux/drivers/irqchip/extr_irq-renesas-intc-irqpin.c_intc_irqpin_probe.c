
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_chip {char* name; void (* irq_mask ) (struct irq_data*) ;void (* irq_unmask ) (struct irq_data*) ;int flags; int irq_set_wake; int irq_set_type; struct device* parent_device; } ;
struct intc_irqpin_priv {int sense_bitfield_width; int requested_irq; int shared_irqs; int irq_domain; struct intc_irqpin_priv* irq; struct irq_chip irq_chip; struct intc_irqpin_iomem* iomem; struct intc_irqpin_priv* p; struct platform_device* pdev; } ;
struct intc_irqpin_iomem {int width; int iomem; int write; int read; } ;
struct intc_irqpin_config {int irlm_bit; scalar_t__ needs_irlm; } ;
typedef int io ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INTC_IRQPIN_MAX ;
 size_t INTC_IRQPIN_REG_IRLM ;
 int INTC_IRQPIN_REG_NR ;
 int INTC_IRQPIN_REG_NR_MANDATORY ;
 int INTC_IRQPIN_REG_SOURCE ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQF_SHARED ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,unsigned int) ;
 char* dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int devm_ioremap_nocache (struct device*,int,int) ;
 struct intc_irqpin_priv* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_request_irq (struct device*,int,int ,int ,char const*,struct intc_irqpin_priv*) ;
 void intc_irqpin_irq_disable (struct irq_data*) ;
 void intc_irqpin_irq_disable_force (struct irq_data*) ;
 int intc_irqpin_irq_domain_ops ;
 void intc_irqpin_irq_enable (struct irq_data*) ;
 void intc_irqpin_irq_enable_force (struct irq_data*) ;
 int intc_irqpin_irq_handler ;
 int intc_irqpin_irq_set_type ;
 int intc_irqpin_irq_set_wake ;
 int intc_irqpin_mask_unmask_prio (struct intc_irqpin_priv*,int,int) ;
 int intc_irqpin_read32 ;
 int intc_irqpin_read8 ;
 int intc_irqpin_read_modify_write (struct intc_irqpin_priv*,size_t,int ,int,int) ;
 void intc_irqpin_shared_irq_disable (struct irq_data*) ;
 void intc_irqpin_shared_irq_enable (struct irq_data*) ;
 int intc_irqpin_shared_irq_handler ;
 int intc_irqpin_write (struct intc_irqpin_priv*,int ,int) ;
 int intc_irqpin_write32 ;
 int intc_irqpin_write8 ;
 int irq_domain_add_simple (int ,unsigned int,int ,int *,struct intc_irqpin_priv*) ;
 int irq_domain_remove (int ) ;
 int memset (struct resource**,int ,int) ;
 struct intc_irqpin_config* of_device_get_match_data (struct device*) ;
 int of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct intc_irqpin_priv*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int intc_irqpin_probe(struct platform_device *pdev)
{
 const struct intc_irqpin_config *config;
 struct device *dev = &pdev->dev;
 struct intc_irqpin_priv *p;
 struct intc_irqpin_iomem *i;
 struct resource *io[INTC_IRQPIN_REG_NR];
 struct resource *irq;
 struct irq_chip *irq_chip;
 void (*enable_fn)(struct irq_data *d);
 void (*disable_fn)(struct irq_data *d);
 const char *name = dev_name(dev);
 bool control_parent;
 unsigned int nirqs;
 int ref_irq;
 int ret;
 int k;

 p = devm_kzalloc(dev, sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;


 of_property_read_u32(dev->of_node, "sense-bitfield-width",
        &p->sense_bitfield_width);
 control_parent = of_property_read_bool(dev->of_node, "control-parent");
 if (!p->sense_bitfield_width)
  p->sense_bitfield_width = 4;

 p->pdev = pdev;
 platform_set_drvdata(pdev, p);

 config = of_device_get_match_data(dev);

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);


 memset(io, 0, sizeof(io));
 for (k = 0; k < INTC_IRQPIN_REG_NR; k++) {
  io[k] = platform_get_resource(pdev, IORESOURCE_MEM, k);
  if (!io[k] && k < INTC_IRQPIN_REG_NR_MANDATORY) {
   dev_err(dev, "not enough IOMEM resources\n");
   ret = -EINVAL;
   goto err0;
  }
 }


 for (k = 0; k < INTC_IRQPIN_MAX; k++) {
  irq = platform_get_resource(pdev, IORESOURCE_IRQ, k);
  if (!irq)
   break;

  p->irq[k].p = p;
  p->irq[k].requested_irq = irq->start;
 }

 nirqs = k;
 if (nirqs < 1) {
  dev_err(dev, "not enough IRQ resources\n");
  ret = -EINVAL;
  goto err0;
 }


 for (k = 0; k < INTC_IRQPIN_REG_NR; k++) {
  i = &p->iomem[k];


  if (!io[k])
   continue;

  switch (resource_size(io[k])) {
  case 1:
   i->width = 8;
   i->read = intc_irqpin_read8;
   i->write = intc_irqpin_write8;
   break;
  case 4:
   i->width = 32;
   i->read = intc_irqpin_read32;
   i->write = intc_irqpin_write32;
   break;
  default:
   dev_err(dev, "IOMEM size mismatch\n");
   ret = -EINVAL;
   goto err0;
  }

  i->iomem = devm_ioremap_nocache(dev, io[k]->start,
      resource_size(io[k]));
  if (!i->iomem) {
   dev_err(dev, "failed to remap IOMEM\n");
   ret = -ENXIO;
   goto err0;
  }
 }


 if (config && config->needs_irlm) {
  if (io[INTC_IRQPIN_REG_IRLM])
   intc_irqpin_read_modify_write(p, INTC_IRQPIN_REG_IRLM,
            config->irlm_bit, 1, 1);
  else
   dev_warn(dev, "unable to select IRLM mode\n");
 }


 for (k = 0; k < nirqs; k++)
  intc_irqpin_mask_unmask_prio(p, k, 1);


 intc_irqpin_write(p, INTC_IRQPIN_REG_SOURCE, 0x0);


 ref_irq = p->irq[0].requested_irq;
 p->shared_irqs = 1;
 for (k = 1; k < nirqs; k++) {
  if (ref_irq != p->irq[k].requested_irq) {
   p->shared_irqs = 0;
   break;
  }
 }


 if (control_parent) {
  enable_fn = intc_irqpin_irq_enable_force;
  disable_fn = intc_irqpin_irq_disable_force;
 } else if (!p->shared_irqs) {
  enable_fn = intc_irqpin_irq_enable;
  disable_fn = intc_irqpin_irq_disable;
 } else {
  enable_fn = intc_irqpin_shared_irq_enable;
  disable_fn = intc_irqpin_shared_irq_disable;
 }

 irq_chip = &p->irq_chip;
 irq_chip->name = "intc-irqpin";
 irq_chip->parent_device = dev;
 irq_chip->irq_mask = disable_fn;
 irq_chip->irq_unmask = enable_fn;
 irq_chip->irq_set_type = intc_irqpin_irq_set_type;
 irq_chip->irq_set_wake = intc_irqpin_irq_set_wake;
 irq_chip->flags = IRQCHIP_MASK_ON_SUSPEND;

 p->irq_domain = irq_domain_add_simple(dev->of_node, nirqs, 0,
           &intc_irqpin_irq_domain_ops, p);
 if (!p->irq_domain) {
  ret = -ENXIO;
  dev_err(dev, "cannot initialize irq domain\n");
  goto err0;
 }

 if (p->shared_irqs) {

  if (devm_request_irq(dev, p->irq[0].requested_irq,
    intc_irqpin_shared_irq_handler,
    IRQF_SHARED, name, p)) {
   dev_err(dev, "failed to request low IRQ\n");
   ret = -ENOENT;
   goto err1;
  }
 } else {

  for (k = 0; k < nirqs; k++) {
   if (devm_request_irq(dev, p->irq[k].requested_irq,
          intc_irqpin_irq_handler, 0, name,
          &p->irq[k])) {
    dev_err(dev, "failed to request low IRQ\n");
    ret = -ENOENT;
    goto err1;
   }
  }
 }


 for (k = 0; k < nirqs; k++)
  intc_irqpin_mask_unmask_prio(p, k, 0);

 dev_info(dev, "driving %d irqs\n", nirqs);

 return 0;

err1:
 irq_domain_remove(p->irq_domain);
err0:
 pm_runtime_put(dev);
 pm_runtime_disable(dev);
 return ret;
}
