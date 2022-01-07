
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_device {int list; } ;


 int iommu_device_lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iommu_device_unregister(struct iommu_device *iommu)
{
 spin_lock(&iommu_device_lock);
 list_del(&iommu->list);
 spin_unlock(&iommu_device_lock);
}
