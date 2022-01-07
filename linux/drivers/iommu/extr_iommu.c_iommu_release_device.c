
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_ops {int (* remove_device ) (struct device*) ;} ;
struct device {scalar_t__ iommu_group; TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 int iommu_free_dev_param (struct device*) ;
 int stub1 (struct device*) ;

void iommu_release_device(struct device *dev)
{
 const struct iommu_ops *ops = dev->bus->iommu_ops;

 if (dev->iommu_group)
  ops->remove_device(dev);

 iommu_free_dev_param(dev);
}
