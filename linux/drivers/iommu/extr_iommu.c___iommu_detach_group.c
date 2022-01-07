
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {struct iommu_domain* default_domain; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;


 int WARN_ON (int) ;
 int __iommu_group_for_each_dev (struct iommu_group*,struct iommu_domain*,int ) ;
 int iommu_group_do_attach_device ;
 int iommu_group_do_detach_device ;

__attribute__((used)) static void __iommu_detach_group(struct iommu_domain *domain,
     struct iommu_group *group)
{
 int ret;

 if (!group->default_domain) {
  __iommu_group_for_each_dev(group, domain,
        iommu_group_do_detach_device);
  group->domain = ((void*)0);
  return;
 }

 if (group->domain == group->default_domain)
  return;


 ret = __iommu_group_for_each_dev(group, group->default_domain,
      iommu_group_do_attach_device);
 if (ret != 0)
  WARN_ON(1);
 else
  group->domain = group->default_domain;
}
