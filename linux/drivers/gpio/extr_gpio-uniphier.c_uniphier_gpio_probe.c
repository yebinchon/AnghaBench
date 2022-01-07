
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip {int irq_set_type; int irq_set_affinity; int irq_eoi; int irq_unmask; int irq_mask; void* name; } ;
struct gpio_chip {int base; int ngpio; int to_irq; int set_multiple; int set; int get; int direction_output; int direction_input; int get_direction; int free; int request; struct device* parent; void* label; } ;
struct uniphier_gpio_priv {int domain; struct irq_chip irq_chip; struct gpio_chip chip; int lock; int regs; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int UNIPHIER_GPIO_IRQ_MAX_NUM ;
 void* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,struct uniphier_gpio_priv*) ;
 struct uniphier_gpio_priv* devm_kzalloc (struct device*,int ,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int irq_chip_eoi_parent ;
 int irq_chip_set_affinity_parent ;
 int irq_domain_create_hierarchy (struct irq_domain*,int ,int ,int ,int *,struct uniphier_gpio_priv*) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_irq_find_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int of_node_to_fwnode (int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_gpio_priv*) ;
 int saved_vals ;
 int spin_lock_init (int *) ;
 int struct_size (struct uniphier_gpio_priv*,int ,unsigned int) ;
 int uniphier_gpio_direction_input ;
 int uniphier_gpio_direction_output ;
 int uniphier_gpio_get ;
 int uniphier_gpio_get_direction ;
 int uniphier_gpio_get_nbanks (int ) ;
 int uniphier_gpio_hw_init (struct uniphier_gpio_priv*) ;
 int uniphier_gpio_irq_domain_ops ;
 int uniphier_gpio_irq_mask ;
 int uniphier_gpio_irq_set_type ;
 int uniphier_gpio_irq_unmask ;
 int uniphier_gpio_set ;
 int uniphier_gpio_set_multiple ;
 int uniphier_gpio_to_irq ;

__attribute__((used)) static int uniphier_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *parent_np;
 struct irq_domain *parent_domain;
 struct uniphier_gpio_priv *priv;
 struct gpio_chip *chip;
 struct irq_chip *irq_chip;
 unsigned int nregs;
 u32 ngpios;
 int ret;

 parent_np = of_irq_find_parent(dev->of_node);
 if (!parent_np)
  return -ENXIO;

 parent_domain = irq_find_host(parent_np);
 of_node_put(parent_np);
 if (!parent_domain)
  return -EPROBE_DEFER;

 ret = of_property_read_u32(dev->of_node, "ngpios", &ngpios);
 if (ret)
  return ret;

 nregs = uniphier_gpio_get_nbanks(ngpios) * 2 + 3;
 priv = devm_kzalloc(dev, struct_size(priv, saved_vals, nregs),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->regs))
  return PTR_ERR(priv->regs);

 spin_lock_init(&priv->lock);

 chip = &priv->chip;
 chip->label = dev_name(dev);
 chip->parent = dev;
 chip->request = gpiochip_generic_request;
 chip->free = gpiochip_generic_free;
 chip->get_direction = uniphier_gpio_get_direction;
 chip->direction_input = uniphier_gpio_direction_input;
 chip->direction_output = uniphier_gpio_direction_output;
 chip->get = uniphier_gpio_get;
 chip->set = uniphier_gpio_set;
 chip->set_multiple = uniphier_gpio_set_multiple;
 chip->to_irq = uniphier_gpio_to_irq;
 chip->base = -1;
 chip->ngpio = ngpios;

 irq_chip = &priv->irq_chip;
 irq_chip->name = dev_name(dev);
 irq_chip->irq_mask = uniphier_gpio_irq_mask;
 irq_chip->irq_unmask = uniphier_gpio_irq_unmask;
 irq_chip->irq_eoi = irq_chip_eoi_parent;
 irq_chip->irq_set_affinity = irq_chip_set_affinity_parent;
 irq_chip->irq_set_type = uniphier_gpio_irq_set_type;

 uniphier_gpio_hw_init(priv);

 ret = devm_gpiochip_add_data(dev, chip, priv);
 if (ret)
  return ret;

 priv->domain = irq_domain_create_hierarchy(
     parent_domain, 0,
     UNIPHIER_GPIO_IRQ_MAX_NUM,
     of_node_to_fwnode(dev->of_node),
     &uniphier_gpio_irq_domain_ops, priv);
 if (!priv->domain)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 return 0;
}
