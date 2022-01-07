
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int debugfs; } ;


 int S_IRUGO ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,int ,struct tegra_smmu*,int *) ;
 int tegra_smmu_clients_fops ;
 int tegra_smmu_swgroups_fops ;

__attribute__((used)) static void tegra_smmu_debugfs_init(struct tegra_smmu *smmu)
{
 smmu->debugfs = debugfs_create_dir("smmu", ((void*)0));
 if (!smmu->debugfs)
  return;

 debugfs_create_file("swgroups", S_IRUGO, smmu->debugfs, smmu,
       &tegra_smmu_swgroups_fops);
 debugfs_create_file("clients", S_IRUGO, smmu->debugfs, smmu,
       &tegra_smmu_clients_fops);
}
