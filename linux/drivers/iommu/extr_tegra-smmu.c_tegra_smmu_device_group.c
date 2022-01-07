
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu {int dummy; } ;
struct iommu_group {int dummy; } ;
struct iommu_fwspec {int * ids; } ;
struct TYPE_2__ {struct tegra_smmu* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 struct iommu_group* generic_device_group (struct device*) ;
 struct iommu_group* tegra_smmu_group_get (struct tegra_smmu*,int ) ;

__attribute__((used)) static struct iommu_group *tegra_smmu_device_group(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct tegra_smmu *smmu = dev->archdata.iommu;
 struct iommu_group *group;

 group = tegra_smmu_group_get(smmu, fwspec->ids[0]);
 if (!group)
  group = generic_device_group(dev);

 return group;
}
