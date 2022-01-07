
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int devices_kobj; } ;
struct device {struct iommu_group* iommu_group; } ;


 int kobject_get (int ) ;

struct iommu_group *iommu_group_get(struct device *dev)
{
 struct iommu_group *group = dev->iommu_group;

 if (group)
  kobject_get(group->devices_kobj);

 return group;
}
