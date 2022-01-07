
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int msi_domain; int of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct mvebu_icu_msi_data {int * subset_data; void* icu; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int DOMAIN_BUS_PLATFORM_MSI ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int ICU_MAX_IRQS ;
 int dev_err (struct device*,char*) ;
 void* dev_get_drvdata (struct device*) ;
 struct mvebu_icu_msi_data* devm_kzalloc (struct device*,int,int ) ;
 struct device_node* irq_domain_get_of_node (int ) ;
 int legacy_bindings ;
 int mvebu_icu_domain_ops ;
 int mvebu_icu_nsr_subset_data ;
 int mvebu_icu_write_msg ;
 int * of_device_get_match_data (struct device*) ;
 int of_msi_get_domain (struct device*,int ,int ) ;
 struct irq_domain* platform_msi_create_device_tree_domain (struct device*,int ,int ,int *,struct mvebu_icu_msi_data*) ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static int mvebu_icu_subset_probe(struct platform_device *pdev)
{
 struct mvebu_icu_msi_data *msi_data;
 struct device_node *msi_parent_dn;
 struct device *dev = &pdev->dev;
 struct irq_domain *irq_domain;

 msi_data = devm_kzalloc(dev, sizeof(*msi_data), GFP_KERNEL);
 if (!msi_data)
  return -ENOMEM;

 if (static_branch_unlikely(&legacy_bindings)) {
  msi_data->icu = dev_get_drvdata(dev);
  msi_data->subset_data = &mvebu_icu_nsr_subset_data;
 } else {
  msi_data->icu = dev_get_drvdata(dev->parent);
  msi_data->subset_data = of_device_get_match_data(dev);
 }

 dev->msi_domain = of_msi_get_domain(dev, dev->of_node,
         DOMAIN_BUS_PLATFORM_MSI);
 if (!dev->msi_domain)
  return -EPROBE_DEFER;

 msi_parent_dn = irq_domain_get_of_node(dev->msi_domain);
 if (!msi_parent_dn)
  return -ENODEV;

 irq_domain = platform_msi_create_device_tree_domain(dev, ICU_MAX_IRQS,
           mvebu_icu_write_msg,
           &mvebu_icu_domain_ops,
           msi_data);
 if (!irq_domain) {
  dev_err(dev, "Failed to create ICU MSI domain\n");
  return -ENOMEM;
 }

 return 0;
}
