
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int mutex; } ;
struct iommu_domain {int dummy; } ;


 int __iommu_attach_group (struct iommu_domain*,struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iommu_attach_group(struct iommu_domain *domain, struct iommu_group *group)
{
 int ret;

 mutex_lock(&group->mutex);
 ret = __iommu_attach_group(domain, group);
 mutex_unlock(&group->mutex);

 return ret;
}
