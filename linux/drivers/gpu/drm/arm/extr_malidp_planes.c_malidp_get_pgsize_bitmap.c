
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct malidp_plane {TYPE_2__ base; } ;
struct iommu_domain {int pgsize_bitmap; } ;
struct TYPE_3__ {int dev; } ;


 struct iommu_domain* iommu_get_domain_for_dev (int ) ;
 scalar_t__ iommu_present (int *) ;
 int platform_bus_type ;

__attribute__((used)) static u32 malidp_get_pgsize_bitmap(struct malidp_plane *mp)
{
 u32 pgsize_bitmap = 0;

 if (iommu_present(&platform_bus_type)) {
  struct iommu_domain *mmu_dom =
   iommu_get_domain_for_dev(mp->base.dev->dev);

  if (mmu_dom)
   pgsize_bitmap = mmu_dom->pgsize_bitmap;
 }

 return pgsize_bitmap;
}
