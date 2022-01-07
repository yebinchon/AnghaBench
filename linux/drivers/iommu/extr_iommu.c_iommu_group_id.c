
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int id; } ;



int iommu_group_id(struct iommu_group *group)
{
 return group->id;
}
