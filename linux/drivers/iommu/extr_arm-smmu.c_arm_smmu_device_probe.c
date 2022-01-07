
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {scalar_t__ pm_domain; int fwnode; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct arm_smmu_device {int num_global_irqs; int* irqs; int num_clks; scalar_t__ version; int iommu; struct device* dev; int num_context_banks; int num_context_irqs; int clks; int numpage; struct arm_smmu_device* base; } ;
typedef int resource_size_t ;


 scalar_t__ ARM_SMMU_V2 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct arm_smmu_device*) ;
 int PTR_ERR (struct arm_smmu_device*) ;
 int arm_smmu_bus_init () ;
 int arm_smmu_device_acpi_probe (struct platform_device*,struct arm_smmu_device*) ;
 int arm_smmu_device_cfg_probe (struct arm_smmu_device*) ;
 int arm_smmu_device_dt_probe (struct platform_device*,struct arm_smmu_device*) ;
 int arm_smmu_device_reset (struct arm_smmu_device*) ;
 int arm_smmu_global_fault ;
 struct arm_smmu_device* arm_smmu_impl_init (struct arm_smmu_device*) ;
 int arm_smmu_ops ;
 int arm_smmu_test_smr_masks (struct arm_smmu_device*) ;
 int clk_bulk_prepare_enable (int,int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_bulk_get_all (struct device*,int *) ;
 struct arm_smmu_device* devm_ioremap_resource (struct device*,struct resource*) ;
 int* devm_kcalloc (struct device*,int,int,int ) ;
 struct arm_smmu_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct arm_smmu_device*) ;
 int iommu_device_register (int *) ;
 int iommu_device_set_fwnode (int *,int ) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,struct device*,int *,char*,int *) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct arm_smmu_device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int resource_size (struct resource*) ;
 int using_legacy_binding ;

__attribute__((used)) static int arm_smmu_device_probe(struct platform_device *pdev)
{
 struct resource *res;
 resource_size_t ioaddr;
 struct arm_smmu_device *smmu;
 struct device *dev = &pdev->dev;
 int num_irqs, i, err;

 smmu = devm_kzalloc(dev, sizeof(*smmu), GFP_KERNEL);
 if (!smmu) {
  dev_err(dev, "failed to allocate arm_smmu_device\n");
  return -ENOMEM;
 }
 smmu->dev = dev;

 if (dev->of_node)
  err = arm_smmu_device_dt_probe(pdev, smmu);
 else
  err = arm_smmu_device_acpi_probe(pdev, smmu);

 if (err)
  return err;

 smmu = arm_smmu_impl_init(smmu);
 if (IS_ERR(smmu))
  return PTR_ERR(smmu);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ioaddr = res->start;
 smmu->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(smmu->base))
  return PTR_ERR(smmu->base);




 smmu->numpage = resource_size(res);

 num_irqs = 0;
 while ((res = platform_get_resource(pdev, IORESOURCE_IRQ, num_irqs))) {
  num_irqs++;
  if (num_irqs > smmu->num_global_irqs)
   smmu->num_context_irqs++;
 }

 if (!smmu->num_context_irqs) {
  dev_err(dev, "found %d interrupts but expected at least %d\n",
   num_irqs, smmu->num_global_irqs + 1);
  return -ENODEV;
 }

 smmu->irqs = devm_kcalloc(dev, num_irqs, sizeof(*smmu->irqs),
      GFP_KERNEL);
 if (!smmu->irqs) {
  dev_err(dev, "failed to allocate %d irqs\n", num_irqs);
  return -ENOMEM;
 }

 for (i = 0; i < num_irqs; ++i) {
  int irq = platform_get_irq(pdev, i);

  if (irq < 0) {
   dev_err(dev, "failed to get irq index %d\n", i);
   return -ENODEV;
  }
  smmu->irqs[i] = irq;
 }

 err = devm_clk_bulk_get_all(dev, &smmu->clks);
 if (err < 0) {
  dev_err(dev, "failed to get clocks %d\n", err);
  return err;
 }
 smmu->num_clks = err;

 err = clk_bulk_prepare_enable(smmu->num_clks, smmu->clks);
 if (err)
  return err;

 err = arm_smmu_device_cfg_probe(smmu);
 if (err)
  return err;

 if (smmu->version == ARM_SMMU_V2) {
  if (smmu->num_context_banks > smmu->num_context_irqs) {
   dev_err(dev,
         "found only %d context irq(s) but %d required\n",
         smmu->num_context_irqs, smmu->num_context_banks);
   return -ENODEV;
  }


  smmu->num_context_irqs = smmu->num_context_banks;
 }

 for (i = 0; i < smmu->num_global_irqs; ++i) {
  err = devm_request_irq(smmu->dev, smmu->irqs[i],
           arm_smmu_global_fault,
           IRQF_SHARED,
           "arm-smmu global fault",
           smmu);
  if (err) {
   dev_err(dev, "failed to request global IRQ %d (%u)\n",
    i, smmu->irqs[i]);
   return err;
  }
 }

 err = iommu_device_sysfs_add(&smmu->iommu, smmu->dev, ((void*)0),
         "smmu.%pa", &ioaddr);
 if (err) {
  dev_err(dev, "Failed to register iommu in sysfs\n");
  return err;
 }

 iommu_device_set_ops(&smmu->iommu, &arm_smmu_ops);
 iommu_device_set_fwnode(&smmu->iommu, dev->fwnode);

 err = iommu_device_register(&smmu->iommu);
 if (err) {
  dev_err(dev, "Failed to register iommu\n");
  return err;
 }

 platform_set_drvdata(pdev, smmu);
 arm_smmu_device_reset(smmu);
 arm_smmu_test_smr_masks(smmu);







 if (dev->pm_domain) {
  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);
 }






 if (!using_legacy_binding)
  arm_smmu_bus_init();

 return 0;
}
