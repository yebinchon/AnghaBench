
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dummy; } ;


 scalar_t__ iopgd_is_table (int ) ;
 int * iopgd_offset (struct omap_iommu*,int ) ;
 int * iopte_offset (int *,int ) ;

__attribute__((used)) static void
iopgtable_lookup_entry(struct omap_iommu *obj, u32 da, u32 **ppgd, u32 **ppte)
{
 u32 *iopgd, *iopte = ((void*)0);

 iopgd = iopgd_offset(obj, da);
 if (!*iopgd)
  goto out;

 if (iopgd_is_table(*iopgd))
  iopte = iopte_offset(iopgd, da);
out:
 *ppgd = iopgd;
 *ppte = iopte;
}
