
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 struct device* fsl_mc_cont_dev (struct device*) ;
 struct iommu_group* iommu_group_alloc () ;
 struct iommu_group* iommu_group_get (struct device*) ;

struct iommu_group *fsl_mc_device_group(struct device *dev)
{
 struct device *cont_dev = fsl_mc_cont_dev(dev);
 struct iommu_group *group;

 group = iommu_group_get(cont_dev);
 if (!group)
  group = iommu_group_alloc();
 return group;
}
