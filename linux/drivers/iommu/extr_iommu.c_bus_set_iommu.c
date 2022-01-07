
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_ops {int dummy; } ;
struct bus_type {struct iommu_ops const* iommu_ops; } ;


 int EBUSY ;
 int iommu_bus_init (struct bus_type*,struct iommu_ops const*) ;

int bus_set_iommu(struct bus_type *bus, const struct iommu_ops *ops)
{
 int err;

 if (bus->iommu_ops != ((void*)0))
  return -EBUSY;

 bus->iommu_ops = ops;


 err = iommu_bus_init(bus, ops);
 if (err)
  bus->iommu_ops = ((void*)0);

 return err;
}
