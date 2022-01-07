
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {struct iommu_domain* domain; struct iommu_domain* default_domain; } ;
struct iommu_domain {int dummy; } ;


 int EBUSY ;
 int __iommu_group_for_each_dev (struct iommu_group*,struct iommu_domain*,int ) ;
 int iommu_group_do_attach_device ;

__attribute__((used)) static int __iommu_attach_group(struct iommu_domain *domain,
    struct iommu_group *group)
{
 int ret;

 if (group->default_domain && group->domain != group->default_domain)
  return -EBUSY;

 ret = __iommu_group_for_each_dev(group, domain,
      iommu_group_do_attach_device);
 if (ret == 0)
  group->domain = domain;

 return ret;
}
