
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int mutex; } ;


 int __iommu_group_for_each_dev (struct iommu_group*,void*,int (*) (struct device*,void*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iommu_group_for_each_dev(struct iommu_group *group, void *data,
        int (*fn)(struct device *, void *))
{
 int ret;

 mutex_lock(&group->mutex);
 ret = __iommu_group_for_each_dev(group, data, fn);
 mutex_unlock(&group->mutex);

 return ret;
}
