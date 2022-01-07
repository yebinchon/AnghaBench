
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* iommu_ops; } ;
typedef enum iommu_cap { ____Placeholder_iommu_cap } iommu_cap ;
struct TYPE_2__ {int (* capable ) (int) ;} ;


 int stub1 (int) ;

bool iommu_capable(struct bus_type *bus, enum iommu_cap cap)
{
 if (!bus->iommu_ops || !bus->iommu_ops->capable)
  return 0;

 return bus->iommu_ops->capable(cap);
}
