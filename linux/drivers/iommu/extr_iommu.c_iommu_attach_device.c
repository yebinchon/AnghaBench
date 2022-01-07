
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int mutex; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int __iommu_attach_group (struct iommu_domain*,struct iommu_group*) ;
 int iommu_group_device_count (struct iommu_group*) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iommu_attach_device(struct iommu_domain *domain, struct device *dev)
{
 struct iommu_group *group;
 int ret;

 group = iommu_group_get(dev);
 if (!group)
  return -ENODEV;





 mutex_lock(&group->mutex);
 ret = -EINVAL;
 if (iommu_group_device_count(group) != 1)
  goto out_unlock;

 ret = __iommu_attach_group(domain, group);

out_unlock:
 mutex_unlock(&group->mutex);
 iommu_group_put(group);

 return ret;
}
