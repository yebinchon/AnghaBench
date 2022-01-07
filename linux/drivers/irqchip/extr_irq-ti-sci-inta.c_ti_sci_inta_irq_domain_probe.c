
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_inta_irq_domain {int vint_mutex; int vint_list; int * vint; int * base; int * global_event; int * sci; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {int id; struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,...) ;
 struct device_node* dev_of_node (struct device*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct ti_sci_inta_irq_domain* devm_kzalloc (struct device*,int,int ) ;
 int * devm_ti_sci_get_by_phandle (struct device*,char*) ;
 void* devm_ti_sci_get_of_resource (int *,struct device*,int ,char*) ;
 struct irq_domain* irq_domain_add_linear (struct device_node*,int ,int *,struct ti_sci_inta_irq_domain*) ;
 int irq_domain_remove (struct irq_domain*) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 int mutex_init (int *) ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 int of_node_to_fwnode (struct device_node*) ;
 int of_property_read_u32 (int ,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int ti_sci_get_num_resources (int *) ;
 int ti_sci_inta_irq_domain_ops ;
 struct irq_domain* ti_sci_inta_msi_create_irq_domain (int ,int *,struct irq_domain*) ;
 int ti_sci_inta_msi_domain_info ;

__attribute__((used)) static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
{
 struct irq_domain *parent_domain, *domain, *msi_domain;
 struct device_node *parent_node, *node;
 struct ti_sci_inta_irq_domain *inta;
 struct device *dev = &pdev->dev;
 struct resource *res;
 int ret;

 node = dev_of_node(dev);
 parent_node = of_irq_find_parent(node);
 if (!parent_node) {
  dev_err(dev, "Failed to get IRQ parent node\n");
  return -ENODEV;
 }

 parent_domain = irq_find_host(parent_node);
 if (!parent_domain)
  return -EPROBE_DEFER;

 inta = devm_kzalloc(dev, sizeof(*inta), GFP_KERNEL);
 if (!inta)
  return -ENOMEM;

 inta->pdev = pdev;
 inta->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");
 if (IS_ERR(inta->sci)) {
  ret = PTR_ERR(inta->sci);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "ti,sci read fail %d\n", ret);
  inta->sci = ((void*)0);
  return ret;
 }

 ret = of_property_read_u32(dev->of_node, "ti,sci-dev-id", &pdev->id);
 if (ret) {
  dev_err(dev, "missing 'ti,sci-dev-id' property\n");
  return -EINVAL;
 }

 inta->vint = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
       "ti,sci-rm-range-vint");
 if (IS_ERR(inta->vint)) {
  dev_err(dev, "VINT resource allocation failed\n");
  return PTR_ERR(inta->vint);
 }

 inta->global_event = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
      "ti,sci-rm-range-global-event");
 if (IS_ERR(inta->global_event)) {
  dev_err(dev, "Global event resource allocation failed\n");
  return PTR_ERR(inta->global_event);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 inta->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(inta->base))
  return -ENODEV;

 domain = irq_domain_add_linear(dev_of_node(dev),
           ti_sci_get_num_resources(inta->vint),
           &ti_sci_inta_irq_domain_ops, inta);
 if (!domain) {
  dev_err(dev, "Failed to allocate IRQ domain\n");
  return -ENOMEM;
 }

 msi_domain = ti_sci_inta_msi_create_irq_domain(of_node_to_fwnode(node),
      &ti_sci_inta_msi_domain_info,
      domain);
 if (!msi_domain) {
  irq_domain_remove(domain);
  dev_err(dev, "Failed to allocate msi domain\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&inta->vint_list);
 mutex_init(&inta->vint_mutex);

 return 0;
}
