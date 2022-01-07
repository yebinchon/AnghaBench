
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {unsigned int type; int pgsize_bitmap; TYPE_1__* ops; } ;
struct bus_type {TYPE_1__* iommu_ops; } ;
struct TYPE_2__ {int pgsize_bitmap; struct iommu_domain* (* domain_alloc ) (unsigned int) ;} ;


 struct iommu_domain* stub1 (unsigned int) ;

__attribute__((used)) static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
       unsigned type)
{
 struct iommu_domain *domain;

 if (bus == ((void*)0) || bus->iommu_ops == ((void*)0))
  return ((void*)0);

 domain = bus->iommu_ops->domain_alloc(type);
 if (!domain)
  return ((void*)0);

 domain->ops = bus->iommu_ops;
 domain->type = type;

 domain->pgsize_bitmap = bus->iommu_ops->pgsize_bitmap;

 return domain;
}
