
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {struct iommu_domain* default_domain; } ;
struct iommu_domain {int dummy; } ;



struct iommu_domain *iommu_group_default_domain(struct iommu_group *group)
{
 return group->default_domain;
}
