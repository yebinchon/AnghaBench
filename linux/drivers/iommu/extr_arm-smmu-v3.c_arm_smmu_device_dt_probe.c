
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct arm_smmu_device {int features; } ;


 int ARM_SMMU_FEAT_COHERENCY ;
 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ of_dma_is_coherent (int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int parse_driver_options (struct arm_smmu_device*) ;

__attribute__((used)) static int arm_smmu_device_dt_probe(struct platform_device *pdev,
        struct arm_smmu_device *smmu)
{
 struct device *dev = &pdev->dev;
 u32 cells;
 int ret = -EINVAL;

 if (of_property_read_u32(dev->of_node, "#iommu-cells", &cells))
  dev_err(dev, "missing #iommu-cells property\n");
 else if (cells != 1)
  dev_err(dev, "invalid #iommu-cells value (%d)\n", cells);
 else
  ret = 0;

 parse_driver_options(smmu);

 if (of_dma_is_coherent(dev->of_node))
  smmu->features |= ARM_SMMU_FEAT_COHERENCY;

 return ret;
}
