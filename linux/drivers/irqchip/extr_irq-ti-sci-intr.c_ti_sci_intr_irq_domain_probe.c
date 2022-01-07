
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_intr_irq_domain {int * dst_irq; int dst_id; int * sci; int type; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_of_node (struct device*) ;
 struct ti_sci_intr_irq_domain* devm_kzalloc (struct device*,int,int ) ;
 int * devm_ti_sci_get_by_phandle (struct device*,char*) ;
 int * devm_ti_sci_get_of_resource (int *,struct device*,int ,char*) ;
 struct irq_domain* irq_domain_add_hierarchy (struct irq_domain*,int ,int ,int ,int *,struct ti_sci_intr_irq_domain*) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_irq_find_parent (int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int ti_sci_intr_irq_domain_ops ;

__attribute__((used)) static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
{
 struct irq_domain *parent_domain, *domain;
 struct ti_sci_intr_irq_domain *intr;
 struct device_node *parent_node;
 struct device *dev = &pdev->dev;
 int ret;

 parent_node = of_irq_find_parent(dev_of_node(dev));
 if (!parent_node) {
  dev_err(dev, "Failed to get IRQ parent node\n");
  return -ENODEV;
 }

 parent_domain = irq_find_host(parent_node);
 if (!parent_domain) {
  dev_err(dev, "Failed to find IRQ parent domain\n");
  return -ENODEV;
 }

 intr = devm_kzalloc(dev, sizeof(*intr), GFP_KERNEL);
 if (!intr)
  return -ENOMEM;

 ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
       &intr->type);
 if (ret) {
  dev_err(dev, "missing ti,intr-trigger-type property\n");
  return -EINVAL;
 }

 intr->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");
 if (IS_ERR(intr->sci)) {
  ret = PTR_ERR(intr->sci);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "ti,sci read fail %d\n", ret);
  intr->sci = ((void*)0);
  return ret;
 }

 ret = of_property_read_u32(dev_of_node(dev), "ti,sci-dst-id",
       &intr->dst_id);
 if (ret) {
  dev_err(dev, "missing 'ti,sci-dst-id' property\n");
  return -EINVAL;
 }

 intr->dst_irq = devm_ti_sci_get_of_resource(intr->sci, dev,
          intr->dst_id,
          "ti,sci-rm-range-girq");
 if (IS_ERR(intr->dst_irq)) {
  dev_err(dev, "Destination irq resource allocation failed\n");
  return PTR_ERR(intr->dst_irq);
 }

 domain = irq_domain_add_hierarchy(parent_domain, 0, 0, dev_of_node(dev),
       &ti_sci_intr_irq_domain_ops, intr);
 if (!domain) {
  dev_err(dev, "Failed to allocate IRQ domain\n");
  return -ENOMEM;
 }

 return 0;
}
