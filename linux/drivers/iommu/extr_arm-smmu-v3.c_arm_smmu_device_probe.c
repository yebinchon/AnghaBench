
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int fwnode; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_11__ {int irq; } ;
struct TYPE_12__ {TYPE_3__ q; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_10__ {TYPE_1__ q; } ;
struct arm_smmu_device {int combined_irq; int gerr_irq; int iommu; TYPE_4__ priq; TYPE_2__ evtq; int base; struct device* dev; } ;
typedef int resource_size_t ;
struct TYPE_13__ {int * iommu_ops; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_5__ amba_bustype ;
 int arm_smmu_device_acpi_probe (struct platform_device*,struct arm_smmu_device*) ;
 int arm_smmu_device_dt_probe (struct platform_device*,struct arm_smmu_device*) ;
 int arm_smmu_device_hw_probe (struct arm_smmu_device*) ;
 int arm_smmu_device_reset (struct arm_smmu_device*,int) ;
 int arm_smmu_init_structures (struct arm_smmu_device*) ;
 int arm_smmu_ops ;
 scalar_t__ arm_smmu_resource_size (struct arm_smmu_device*) ;
 int bus_set_iommu (TYPE_5__*,int *) ;
 int dev_err (struct device*,char*,...) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct arm_smmu_device* devm_kzalloc (struct device*,int,int ) ;
 int iommu_device_register (int *) ;
 int iommu_device_set_fwnode (int *,int ) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,struct device*,int *,char*,int *) ;
 TYPE_5__ pci_bus_type ;
 int pci_request_acs () ;
 TYPE_5__ platform_bus_type ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct arm_smmu_device*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static int arm_smmu_device_probe(struct platform_device *pdev)
{
 int irq, ret;
 struct resource *res;
 resource_size_t ioaddr;
 struct arm_smmu_device *smmu;
 struct device *dev = &pdev->dev;
 bool bypass;

 smmu = devm_kzalloc(dev, sizeof(*smmu), GFP_KERNEL);
 if (!smmu) {
  dev_err(dev, "failed to allocate arm_smmu_device\n");
  return -ENOMEM;
 }
 smmu->dev = dev;

 if (dev->of_node) {
  ret = arm_smmu_device_dt_probe(pdev, smmu);
 } else {
  ret = arm_smmu_device_acpi_probe(pdev, smmu);
  if (ret == -ENODEV)
   return ret;
 }


 bypass = !!ret;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (resource_size(res) + 1 < arm_smmu_resource_size(smmu)) {
  dev_err(dev, "MMIO region too small (%pr)\n", res);
  return -EINVAL;
 }
 ioaddr = res->start;

 smmu->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(smmu->base))
  return PTR_ERR(smmu->base);



 irq = platform_get_irq_byname(pdev, "combined");
 if (irq > 0)
  smmu->combined_irq = irq;
 else {
  irq = platform_get_irq_byname(pdev, "eventq");
  if (irq > 0)
   smmu->evtq.q.irq = irq;

  irq = platform_get_irq_byname(pdev, "priq");
  if (irq > 0)
   smmu->priq.q.irq = irq;

  irq = platform_get_irq_byname(pdev, "gerror");
  if (irq > 0)
   smmu->gerr_irq = irq;
 }

 ret = arm_smmu_device_hw_probe(smmu);
 if (ret)
  return ret;


 ret = arm_smmu_init_structures(smmu);
 if (ret)
  return ret;


 platform_set_drvdata(pdev, smmu);


 ret = arm_smmu_device_reset(smmu, bypass);
 if (ret)
  return ret;


 ret = iommu_device_sysfs_add(&smmu->iommu, dev, ((void*)0),
         "smmu3.%pa", &ioaddr);
 if (ret)
  return ret;

 iommu_device_set_ops(&smmu->iommu, &arm_smmu_ops);
 iommu_device_set_fwnode(&smmu->iommu, dev->fwnode);

 ret = iommu_device_register(&smmu->iommu);
 if (ret) {
  dev_err(dev, "Failed to register iommu\n");
  return ret;
 }
 if (platform_bus_type.iommu_ops != &arm_smmu_ops) {
  ret = bus_set_iommu(&platform_bus_type, &arm_smmu_ops);
  if (ret)
   return ret;
 }
 return 0;
}
