
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int devices_kobj; } ;


 int kobject_put (int ) ;

void iommu_group_put(struct iommu_group *group)
{
 if (group)
  kobject_put(group->devices_kobj);
}
