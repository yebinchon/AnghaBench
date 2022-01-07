
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void tegra_smmu_debugfs_exit(struct tegra_smmu *smmu)
{
 debugfs_remove_recursive(smmu->debugfs);
}
