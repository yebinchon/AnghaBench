
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct iommu_sva {int dummy; } ;
struct iommu_ops {struct iommu_sva* (* sva_bind ) (struct device*,struct mm_struct*,void*) ;} ;
struct iommu_group {int mutex; } ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 int EINVAL ;
 int ENODEV ;
 struct iommu_sva* ERR_PTR (int ) ;
 int iommu_group_device_count (struct iommu_group*) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iommu_sva* stub1 (struct device*,struct mm_struct*,void*) ;

struct iommu_sva *
iommu_sva_bind_device(struct device *dev, struct mm_struct *mm, void *drvdata)
{
 struct iommu_group *group;
 struct iommu_sva *handle = ERR_PTR(-EINVAL);
 const struct iommu_ops *ops = dev->bus->iommu_ops;

 if (!ops || !ops->sva_bind)
  return ERR_PTR(-ENODEV);

 group = iommu_group_get(dev);
 if (!group)
  return ERR_PTR(-ENODEV);


 mutex_lock(&group->mutex);







 if (iommu_group_device_count(group) != 1)
  goto out_unlock;

 handle = ops->sva_bind(dev, mm, drvdata);

out_unlock:
 mutex_unlock(&group->mutex);
 iommu_group_put(group);

 return handle;
}
