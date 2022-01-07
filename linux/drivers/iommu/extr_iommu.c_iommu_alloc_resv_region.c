
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_resv_region {size_t length; int prot; int type; int start; int list; } ;
typedef int phys_addr_t ;
typedef enum iommu_resv_type { ____Placeholder_iommu_resv_type } iommu_resv_type ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct iommu_resv_region* kzalloc (int,int ) ;

struct iommu_resv_region *iommu_alloc_resv_region(phys_addr_t start,
        size_t length, int prot,
        enum iommu_resv_type type)
{
 struct iommu_resv_region *region;

 region = kzalloc(sizeof(*region), GFP_KERNEL);
 if (!region)
  return ((void*)0);

 INIT_LIST_HEAD(&region->list);
 region->start = start;
 region->length = length;
 region->prot = prot;
 region->type = type;
 return region;
}
