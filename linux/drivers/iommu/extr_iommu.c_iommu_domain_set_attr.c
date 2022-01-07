
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {TYPE_1__* ops; } ;
typedef enum iommu_attr { ____Placeholder_iommu_attr } iommu_attr ;
struct TYPE_2__ {int (* domain_set_attr ) (struct iommu_domain*,int,void*) ;} ;


 int EINVAL ;
 int stub1 (struct iommu_domain*,int,void*) ;

int iommu_domain_set_attr(struct iommu_domain *domain,
     enum iommu_attr attr, void *data)
{
 int ret = 0;

 switch (attr) {
 default:
  if (domain->ops->domain_set_attr == ((void*)0))
   return -EINVAL;

  ret = domain->ops->domain_set_attr(domain, attr, data);
 }

 return ret;
}
