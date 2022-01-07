
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu {int iommu; } ;
struct TYPE_2__ {struct tegra_smmu* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;

__attribute__((used)) static void tegra_smmu_remove_device(struct device *dev)
{
 struct tegra_smmu *smmu = dev->archdata.iommu;

 if (smmu)
  iommu_device_unlink(&smmu->iommu, dev);

 dev->archdata.iommu = ((void*)0);
 iommu_group_remove_device(dev);
}
