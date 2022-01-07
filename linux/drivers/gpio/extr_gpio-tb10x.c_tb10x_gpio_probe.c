
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {int base; int label; int ngpio; int to_irq; int free; int request; int owner; struct device* parent; } ;
struct tb10x_gpio {int irq; scalar_t__ base; TYPE_5__* domain; TYPE_7__ gc; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_chip_generic {TYPE_4__* chip_types; scalar_t__ reg_base; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {TYPE_1__* gc; } ;
struct TYPE_11__ {int mask; int ack; } ;
struct TYPE_10__ {int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct TYPE_12__ {TYPE_3__ regs; TYPE_2__ chip; int type; } ;
struct TYPE_9__ {struct irq_chip_generic** gc; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_NONE ;
 int IRQ_GC_INIT_MASK_CACHE ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IRQ_TYPE_EDGE_BOTH ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int OFFSET_TO_REG_CHANGE ;
 scalar_t__ OFFSET_TO_REG_DATA ;
 scalar_t__ OFFSET_TO_REG_DDR ;
 int OFFSET_TO_REG_INT_EN ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int bgpio_init (TYPE_7__*,struct device*,int,scalar_t__,int *,int *,scalar_t__,int *,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_7__*,struct tb10x_gpio*) ;
 int devm_kasprintf (struct device*,int ,char*,struct device_node*) ;
 struct tb10x_gpio* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int,int ,struct tb10x_gpio*) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int handle_edge_irq ;
 int irq_alloc_domain_generic_chips (TYPE_5__*,int ,int,int ,int ,int ,int ,int ) ;
 TYPE_5__* irq_domain_add_linear (struct device_node*,int ,int *,int *) ;
 int irq_gc_ack_set_bit ;
 int irq_gc_mask_clr_bit ;
 int irq_gc_mask_set_bit ;
 int irq_generic_chip_ops ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tb10x_gpio*) ;
 int tb10x_gpio_irq_cascade ;
 int tb10x_gpio_irq_set_type ;
 int tb10x_gpio_to_irq ;

__attribute__((used)) static int tb10x_gpio_probe(struct platform_device *pdev)
{
 struct tb10x_gpio *tb10x_gpio;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int ret = -EBUSY;
 u32 ngpio;

 if (!np)
  return -EINVAL;

 if (of_property_read_u32(np, "abilis,ngpio", &ngpio))
  return -EINVAL;

 tb10x_gpio = devm_kzalloc(dev, sizeof(*tb10x_gpio), GFP_KERNEL);
 if (tb10x_gpio == ((void*)0))
  return -ENOMEM;

 tb10x_gpio->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(tb10x_gpio->base))
  return PTR_ERR(tb10x_gpio->base);

 tb10x_gpio->gc.label =
  devm_kasprintf(dev, GFP_KERNEL, "%pOF", pdev->dev.of_node);
 if (!tb10x_gpio->gc.label)
  return -ENOMEM;






 ret = bgpio_init(&tb10x_gpio->gc, dev, 4,
    tb10x_gpio->base + OFFSET_TO_REG_DATA,
    ((void*)0),
    ((void*)0),
    tb10x_gpio->base + OFFSET_TO_REG_DDR,
    ((void*)0),
    0);
 if (ret) {
  dev_err(dev, "unable to init generic GPIO\n");
  return ret;
 }
 tb10x_gpio->gc.base = -1;
 tb10x_gpio->gc.parent = dev;
 tb10x_gpio->gc.owner = THIS_MODULE;




 tb10x_gpio->gc.ngpio = ngpio;
 tb10x_gpio->gc.request = gpiochip_generic_request;
 tb10x_gpio->gc.free = gpiochip_generic_free;

 ret = devm_gpiochip_add_data(dev, &tb10x_gpio->gc, tb10x_gpio);
 if (ret < 0) {
  dev_err(dev, "Could not add gpiochip.\n");
  return ret;
 }

 platform_set_drvdata(pdev, tb10x_gpio);

 if (of_find_property(np, "interrupt-controller", ((void*)0))) {
  struct irq_chip_generic *gc;

  ret = platform_get_irq(pdev, 0);
  if (ret < 0)
   return ret;

  tb10x_gpio->gc.to_irq = tb10x_gpio_to_irq;
  tb10x_gpio->irq = ret;

  ret = devm_request_irq(dev, ret, tb10x_gpio_irq_cascade,
    IRQF_TRIGGER_NONE | IRQF_SHARED,
    dev_name(dev), tb10x_gpio);
  if (ret != 0)
   return ret;

  tb10x_gpio->domain = irq_domain_add_linear(np,
      tb10x_gpio->gc.ngpio,
      &irq_generic_chip_ops, ((void*)0));
  if (!tb10x_gpio->domain) {
   return -ENOMEM;
  }

  ret = irq_alloc_domain_generic_chips(tb10x_gpio->domain,
    tb10x_gpio->gc.ngpio, 1, tb10x_gpio->gc.label,
    handle_edge_irq, IRQ_NOREQUEST, IRQ_NOPROBE,
    IRQ_GC_INIT_MASK_CACHE);
  if (ret)
   return ret;

  gc = tb10x_gpio->domain->gc->gc[0];
  gc->reg_base = tb10x_gpio->base;
  gc->chip_types[0].type = IRQ_TYPE_EDGE_BOTH;
  gc->chip_types[0].chip.irq_ack = irq_gc_ack_set_bit;
  gc->chip_types[0].chip.irq_mask = irq_gc_mask_clr_bit;
  gc->chip_types[0].chip.irq_unmask = irq_gc_mask_set_bit;
  gc->chip_types[0].chip.irq_set_type = tb10x_gpio_irq_set_type;
  gc->chip_types[0].regs.ack = OFFSET_TO_REG_CHANGE;
  gc->chip_types[0].regs.mask = OFFSET_TO_REG_INT_EN;
 }

 return 0;
}
