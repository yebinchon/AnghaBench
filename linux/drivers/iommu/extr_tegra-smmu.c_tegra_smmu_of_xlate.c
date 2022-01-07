
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int * args; } ;
struct device {int dummy; } ;


 int iommu_fwspec_add_ids (struct device*,int *,int) ;

__attribute__((used)) static int tegra_smmu_of_xlate(struct device *dev,
          struct of_phandle_args *args)
{
 u32 id = args->args[0];

 return iommu_fwspec_add_ids(dev, &id, 1);
}
