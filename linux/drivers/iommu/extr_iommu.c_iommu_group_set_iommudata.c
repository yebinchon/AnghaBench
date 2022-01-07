
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {void (* iommu_data_release ) (void*) ;void* iommu_data; } ;



void iommu_group_set_iommudata(struct iommu_group *group, void *iommu_data,
          void (*release)(void *iommu_data))
{
 group->iommu_data = iommu_data;
 group->iommu_data_release = release;
}
