
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int * iommu_ops; } ;



bool iommu_present(struct bus_type *bus)
{
 return bus->iommu_ops != ((void*)0);
}
