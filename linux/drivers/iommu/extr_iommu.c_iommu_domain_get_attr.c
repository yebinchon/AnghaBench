
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain_geometry {int dummy; } ;
struct iommu_domain {unsigned long pgsize_bitmap; TYPE_1__* ops; struct iommu_domain_geometry geometry; } ;
typedef enum iommu_attr { ____Placeholder_iommu_attr } iommu_attr ;
struct TYPE_2__ {int (* domain_get_attr ) (struct iommu_domain*,int,void*) ;} ;




 int EINVAL ;
 int stub1 (struct iommu_domain*,int,void*) ;

int iommu_domain_get_attr(struct iommu_domain *domain,
     enum iommu_attr attr, void *data)
{
 struct iommu_domain_geometry *geometry;
 bool *paging;
 int ret = 0;

 switch (attr) {
 case 129:
  geometry = data;
  *geometry = domain->geometry;

  break;
 case 128:
  paging = data;
  *paging = (domain->pgsize_bitmap != 0UL);
  break;
 default:
  if (!domain->ops->domain_get_attr)
   return -EINVAL;

  ret = domain->ops->domain_get_attr(domain, attr, data);
 }

 return ret;
}
