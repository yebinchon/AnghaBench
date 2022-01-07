
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int iommu_fwspec_add_ids (struct device*,int ,int) ;
 int ipmmu_init_platform_device (struct device*,struct of_phandle_args*) ;
 int ipmmu_slave_whitelist (struct device*) ;
 scalar_t__ to_ipmmu (struct device*) ;

__attribute__((used)) static int ipmmu_of_xlate(struct device *dev,
     struct of_phandle_args *spec)
{
 if (!ipmmu_slave_whitelist(dev))
  return -ENODEV;

 iommu_fwspec_add_ids(dev, spec->args, 1);


 if (to_ipmmu(dev))
  return 0;

 return ipmmu_init_platform_device(dev, spec);
}
