
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu {int iommu; } ;
struct of_phandle_args {int np; } ;
struct iommu_group {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct tegra_smmu* iommu; } ;
struct device {TYPE_1__ archdata; struct device_node* of_node; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int of_node_put (int ) ;
 scalar_t__ of_parse_phandle_with_args (struct device_node*,char*,char*,unsigned int,struct of_phandle_args*) ;
 int tegra_smmu_configure (struct tegra_smmu*,struct device*,struct of_phandle_args*) ;
 struct tegra_smmu* tegra_smmu_find (int ) ;

__attribute__((used)) static int tegra_smmu_add_device(struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct tegra_smmu *smmu = ((void*)0);
 struct iommu_group *group;
 struct of_phandle_args args;
 unsigned int index = 0;
 int err;

 while (of_parse_phandle_with_args(np, "iommus", "#iommu-cells", index,
       &args) == 0) {
  smmu = tegra_smmu_find(args.np);
  if (smmu) {
   err = tegra_smmu_configure(smmu, dev, &args);
   of_node_put(args.np);

   if (err < 0)
    return err;






   dev->archdata.iommu = smmu;

   iommu_device_link(&smmu->iommu, dev);

   break;
  }

  of_node_put(args.np);
  index++;
 }

 if (!smmu)
  return -ENODEV;

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR(group))
  return PTR_ERR(group);

 iommu_group_put(group);

 return 0;
}
