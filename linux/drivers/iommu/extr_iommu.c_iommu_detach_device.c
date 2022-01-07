
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int mutex; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int __iommu_detach_group (struct iommu_domain*,struct iommu_group*) ;
 int iommu_group_device_count (struct iommu_group*) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iommu_detach_device(struct iommu_domain *domain, struct device *dev)
{
 struct iommu_group *group;

 group = iommu_group_get(dev);
 if (!group)
  return;

 mutex_lock(&group->mutex);
 if (iommu_group_device_count(group) != 1) {
  WARN_ON(1);
  goto out_unlock;
 }

 __iommu_detach_group(domain, group);

out_unlock:
 mutex_unlock(&group->mutex);
 iommu_group_put(group);
}
