
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aidet_priv {int domain; int lock; int reg_base; } ;
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
 int UNIPHIER_AIDET_NR_IRQS ;
 struct uniphier_aidet_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int irq_domain_create_hierarchy (struct irq_domain*,int ,int ,int ,int *,struct uniphier_aidet_priv*) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_irq_find_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int of_node_to_fwnode (int ) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_aidet_priv*) ;
 int spin_lock_init (int *) ;
 int uniphier_aidet_domain_ops ;

__attribute__((used)) static int uniphier_aidet_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *parent_np;
 struct irq_domain *parent_domain;
 struct uniphier_aidet_priv *priv;

 parent_np = of_irq_find_parent(dev->of_node);
 if (!parent_np)
  return -ENXIO;

 parent_domain = irq_find_host(parent_np);
 of_node_put(parent_np);
 if (!parent_domain)
  return -EPROBE_DEFER;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->reg_base))
  return PTR_ERR(priv->reg_base);

 spin_lock_init(&priv->lock);

 priv->domain = irq_domain_create_hierarchy(
     parent_domain, 0,
     UNIPHIER_AIDET_NR_IRQS,
     of_node_to_fwnode(dev->of_node),
     &uniphier_aidet_domain_ops, priv);
 if (!priv->domain)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 return 0;
}
