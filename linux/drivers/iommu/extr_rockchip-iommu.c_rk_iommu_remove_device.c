
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_iommudata {int link; } ;
struct rk_iommu {int iommu; } ;
struct TYPE_2__ {struct rk_iommudata* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 int device_link_del (int ) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 struct rk_iommu* rk_iommu_from_dev (struct device*) ;

__attribute__((used)) static void rk_iommu_remove_device(struct device *dev)
{
 struct rk_iommu *iommu;
 struct rk_iommudata *data = dev->archdata.iommu;

 iommu = rk_iommu_from_dev(dev);

 device_link_del(data->link);
 iommu_device_unlink(&iommu->iommu, dev);
 iommu_group_remove_device(dev);
}
