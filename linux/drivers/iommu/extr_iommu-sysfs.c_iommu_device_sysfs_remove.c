
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_device {int * dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int device_unregister (int *) ;

void iommu_device_sysfs_remove(struct iommu_device *iommu)
{
 dev_set_drvdata(iommu->dev, ((void*)0));
 device_unregister(iommu->dev);
 iommu->dev = ((void*)0);
}
