
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_ops {int (* add_device ) (struct device*) ;} ;
struct device {int iommu_group; TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 int EINVAL ;
 int ENOMEM ;
 int WARN_ON (int ) ;
 int iommu_free_dev_param (struct device*) ;
 int iommu_get_dev_param (struct device*) ;
 int stub1 (struct device*) ;

int iommu_probe_device(struct device *dev)
{
 const struct iommu_ops *ops = dev->bus->iommu_ops;
 int ret;

 WARN_ON(dev->iommu_group);
 if (!ops)
  return -EINVAL;

 if (!iommu_get_dev_param(dev))
  return -ENOMEM;

 ret = ops->add_device(dev);
 if (ret)
  iommu_free_dev_param(dev);

 return ret;
}
