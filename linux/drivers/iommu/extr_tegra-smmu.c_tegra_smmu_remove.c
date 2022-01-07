
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int iommu; } ;


 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int tegra_smmu_debugfs_exit (struct tegra_smmu*) ;

void tegra_smmu_remove(struct tegra_smmu *smmu)
{
 iommu_device_unregister(&smmu->iommu);
 iommu_device_sysfs_remove(&smmu->iommu);

 if (IS_ENABLED(CONFIG_DEBUG_FS))
  tegra_smmu_debugfs_exit(smmu);
}
