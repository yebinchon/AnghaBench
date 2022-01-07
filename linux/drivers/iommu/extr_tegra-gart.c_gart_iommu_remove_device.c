
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int iommu; } ;


 TYPE_1__* gart_handle ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;

__attribute__((used)) static void gart_iommu_remove_device(struct device *dev)
{
 iommu_group_remove_device(dev);
 iommu_device_unlink(&gart_handle->iommu, dev);
}
