
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct bus_type {int dummy; } ;


 int IOMMU_DOMAIN_UNMANAGED ;
 struct iommu_domain* __iommu_domain_alloc (struct bus_type*,int ) ;

struct iommu_domain *iommu_domain_alloc(struct bus_type *bus)
{
 return __iommu_domain_alloc(bus, IOMMU_DOMAIN_UNMANAGED);
}
