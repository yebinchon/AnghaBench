
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int devices_kobj; } ;


 int kobject_get (int ) ;

struct iommu_group *iommu_group_ref_get(struct iommu_group *group)
{
 kobject_get(group->devices_kobj);
 return group;
}
