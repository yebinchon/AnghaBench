
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int iommu_dev; } ;


 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;

void zpci_destroy_iommu(struct zpci_dev *zdev)
{
 iommu_device_unregister(&zdev->iommu_dev);
 iommu_device_sysfs_remove(&zdev->iommu_dev);
}
