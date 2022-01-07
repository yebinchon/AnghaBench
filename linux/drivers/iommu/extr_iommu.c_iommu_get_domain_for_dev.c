
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;

struct iommu_domain *iommu_get_domain_for_dev(struct device *dev)
{
 struct iommu_domain *domain;
 struct iommu_group *group;

 group = iommu_group_get(dev);
 if (!group)
  return ((void*)0);

 domain = group->domain;

 iommu_group_put(group);

 return domain;
}
