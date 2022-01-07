
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_irq_chip {int default_type; int handler; int child_to_parent_hwirq; struct irq_domain* parent_domain; scalar_t__ fwnode; int * chip; } ;
struct TYPE_3__ {int ngpio; char* label; struct gpio_irq_chip irq; int owner; struct device* parent; scalar_t__ base; } ;
struct ixp4xx_gpio {TYPE_1__ gc; scalar_t__ fwnode; scalar_t__ base; struct device* dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 unsigned long BGPIOF_BIG_ENDIAN_BYTE_ORDER ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ IXP4XX_REG_GPCLK ;
 scalar_t__ IXP4XX_REG_GPIN ;
 scalar_t__ IXP4XX_REG_GPOE ;
 scalar_t__ IXP4XX_REG_GPOUT ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int __raw_writel (int,scalar_t__) ;
 int bgpio_init (TYPE_1__*,struct device*,int,scalar_t__,scalar_t__,int *,int *,scalar_t__,unsigned long) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct ixp4xx_gpio*) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct ixp4xx_gpio* devm_kzalloc (struct device*,int,int ) ;
 int handle_bad_irq ;
 scalar_t__ irq_domain_alloc_fwnode (int *) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct irq_domain* ixp4xx_get_irq_domain () ;
 int ixp4xx_gpio_child_to_parent_hwirq ;
 int ixp4xx_gpio_irqchip ;
 scalar_t__ machine_is_dsmg600 () ;
 scalar_t__ machine_is_nas100d () ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 scalar_t__ of_node_to_fwnode (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ixp4xx_gpio*) ;

__attribute__((used)) static int ixp4xx_gpio_probe(struct platform_device *pdev)
{
 unsigned long flags;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct irq_domain *parent;
 struct resource *res;
 struct ixp4xx_gpio *g;
 struct gpio_irq_chip *girq;
 int ret;

 g = devm_kzalloc(dev, sizeof(*g), GFP_KERNEL);
 if (!g)
  return -ENOMEM;
 g->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 g->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(g->base))
  return PTR_ERR(g->base);







 if (np) {
  struct device_node *irq_parent;

  irq_parent = of_irq_find_parent(np);
  if (!irq_parent) {
   dev_err(dev, "no IRQ parent node\n");
   return -ENODEV;
  }
  parent = irq_find_host(irq_parent);
  if (!parent) {
   dev_err(dev, "no IRQ parent domain\n");
   return -ENODEV;
  }
  g->fwnode = of_node_to_fwnode(np);
 } else {
  parent = ixp4xx_get_irq_domain();
  g->fwnode = irq_domain_alloc_fwnode(&res->start);
  if (!g->fwnode) {
   dev_err(dev, "no domain base\n");
   return -ENODEV;
  }
 }





 if (machine_is_dsmg600() || machine_is_nas100d())
  __raw_writel(0x0, g->base + IXP4XX_REG_GPCLK);
 flags = 0;



 ret = bgpio_init(&g->gc, dev, 4,
    g->base + IXP4XX_REG_GPIN,
    g->base + IXP4XX_REG_GPOUT,
    ((void*)0),
    ((void*)0),
    g->base + IXP4XX_REG_GPOE,
    flags);
 if (ret) {
  dev_err(dev, "unable to init generic GPIO\n");
  return ret;
 }
 g->gc.ngpio = 16;
 g->gc.label = "IXP4XX_GPIO_CHIP";





 g->gc.base = 0;
 g->gc.parent = &pdev->dev;
 g->gc.owner = THIS_MODULE;

 girq = &g->gc.irq;
 girq->chip = &ixp4xx_gpio_irqchip;
 girq->fwnode = g->fwnode;
 girq->parent_domain = parent;
 girq->child_to_parent_hwirq = ixp4xx_gpio_child_to_parent_hwirq;
 girq->handler = handle_bad_irq;
 girq->default_type = IRQ_TYPE_NONE;

 ret = devm_gpiochip_add_data(dev, &g->gc, g);
 if (ret) {
  dev_err(dev, "failed to add SoC gpiochip\n");
  return ret;
 }

 platform_set_drvdata(pdev, g);
 dev_info(dev, "IXP4 GPIO registered\n");

 return 0;
}
