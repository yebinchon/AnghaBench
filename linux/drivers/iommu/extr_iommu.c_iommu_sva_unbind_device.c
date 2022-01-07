
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_sva {struct device* dev; } ;
struct iommu_ops {int (* sva_unbind ) (struct iommu_sva*) ;} ;
struct iommu_group {int mutex; } ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iommu_sva*) ;

void iommu_sva_unbind_device(struct iommu_sva *handle)
{
 struct iommu_group *group;
 struct device *dev = handle->dev;
 const struct iommu_ops *ops = dev->bus->iommu_ops;

 if (!ops || !ops->sva_unbind)
  return;

 group = iommu_group_get(dev);
 if (!group)
  return;

 mutex_lock(&group->mutex);
 ops->sva_unbind(handle);
 mutex_unlock(&group->mutex);

 iommu_group_put(group);
}
