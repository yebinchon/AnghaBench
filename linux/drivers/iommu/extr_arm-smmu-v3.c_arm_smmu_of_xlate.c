
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args; } ;
struct device {int dummy; } ;


 int iommu_fwspec_add_ids (struct device*,int ,int) ;

__attribute__((used)) static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
{
 return iommu_fwspec_add_ids(dev, args->args, 1);
}
