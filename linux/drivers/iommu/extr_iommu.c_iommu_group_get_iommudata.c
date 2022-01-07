
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {void* iommu_data; } ;



void *iommu_group_get_iommudata(struct iommu_group *group)
{
 return group->iommu_data;
}
