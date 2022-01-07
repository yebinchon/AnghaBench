
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysmmu_drvdata {int version; int iommu; struct device* sysmmu; int lock; int * clk_master; int * pclk; int * aclk; int * clk; int * sfrbase; } ;
struct resource {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int fwnode; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int LV1_PROT ;
 int LV2_PROT ;
 int MMU_MAJ_VER (int ) ;
 scalar_t__ PG_ENT_SHIFT ;
 int PTR_ERR (int *) ;
 int SYSMMU_LV1_PROT ;
 int SYSMMU_LV2_PROT ;
 scalar_t__ SYSMMU_PG_ENT_SHIFT ;
 int SYSMMU_V5_LV1_PROT ;
 int SYSMMU_V5_LV2_PROT ;
 scalar_t__ SYSMMU_V5_PG_ENT_SHIFT ;
 int __sysmmu_get_version (struct sysmmu_drvdata*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct sysmmu_drvdata* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct sysmmu_drvdata*) ;
 struct device* dma_dev ;
 int exynos_iommu_ops ;
 int exynos_sysmmu_irq ;
 int iommu_device_register (int *) ;
 int iommu_device_set_fwnode (int *,int *) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,struct device*,int *,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sysmmu_drvdata*) ;
 int pm_runtime_enable (struct device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int exynos_sysmmu_probe(struct platform_device *pdev)
{
 int irq, ret;
 struct device *dev = &pdev->dev;
 struct sysmmu_drvdata *data;
 struct resource *res;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->sfrbase = devm_ioremap_resource(dev, res);
 if (IS_ERR(data->sfrbase))
  return PTR_ERR(data->sfrbase);

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return irq;

 ret = devm_request_irq(dev, irq, exynos_sysmmu_irq, 0,
    dev_name(dev), data);
 if (ret) {
  dev_err(dev, "Unabled to register handler of irq %d\n", irq);
  return ret;
 }

 data->clk = devm_clk_get(dev, "sysmmu");
 if (PTR_ERR(data->clk) == -ENOENT)
  data->clk = ((void*)0);
 else if (IS_ERR(data->clk))
  return PTR_ERR(data->clk);

 data->aclk = devm_clk_get(dev, "aclk");
 if (PTR_ERR(data->aclk) == -ENOENT)
  data->aclk = ((void*)0);
 else if (IS_ERR(data->aclk))
  return PTR_ERR(data->aclk);

 data->pclk = devm_clk_get(dev, "pclk");
 if (PTR_ERR(data->pclk) == -ENOENT)
  data->pclk = ((void*)0);
 else if (IS_ERR(data->pclk))
  return PTR_ERR(data->pclk);

 if (!data->clk && (!data->aclk || !data->pclk)) {
  dev_err(dev, "Failed to get device clock(s)!\n");
  return -ENOSYS;
 }

 data->clk_master = devm_clk_get(dev, "master");
 if (PTR_ERR(data->clk_master) == -ENOENT)
  data->clk_master = ((void*)0);
 else if (IS_ERR(data->clk_master))
  return PTR_ERR(data->clk_master);

 data->sysmmu = dev;
 spin_lock_init(&data->lock);

 ret = iommu_device_sysfs_add(&data->iommu, &pdev->dev, ((void*)0),
         dev_name(data->sysmmu));
 if (ret)
  return ret;

 iommu_device_set_ops(&data->iommu, &exynos_iommu_ops);
 iommu_device_set_fwnode(&data->iommu, &dev->of_node->fwnode);

 ret = iommu_device_register(&data->iommu);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, data);

 __sysmmu_get_version(data);
 if (PG_ENT_SHIFT < 0) {
  if (MMU_MAJ_VER(data->version) < 5) {
   PG_ENT_SHIFT = SYSMMU_PG_ENT_SHIFT;
   LV1_PROT = SYSMMU_LV1_PROT;
   LV2_PROT = SYSMMU_LV2_PROT;
  } else {
   PG_ENT_SHIFT = SYSMMU_V5_PG_ENT_SHIFT;
   LV1_PROT = SYSMMU_V5_LV1_PROT;
   LV2_PROT = SYSMMU_V5_LV2_PROT;
  }
 }





 if (!dma_dev)
  dma_dev = &pdev->dev;

 pm_runtime_enable(dev);

 return 0;
}
