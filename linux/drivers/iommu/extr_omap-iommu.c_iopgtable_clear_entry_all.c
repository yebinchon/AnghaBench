
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int page_table_lock; int pd_dma; int dev; } ;
typedef int da ;


 int IOPGD_SHIFT ;
 int PTRS_PER_IOPGD ;
 int flush_iopte_range (int ,int ,unsigned long,int) ;
 int flush_iotlb_all (struct omap_iommu*) ;
 int iopgd_index (int) ;
 scalar_t__ iopgd_is_table (int) ;
 int* iopgd_offset (struct omap_iommu*,int) ;
 int iopte_free (struct omap_iommu*,int ,int) ;
 int iopte_offset (int*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iopgtable_clear_entry_all(struct omap_iommu *obj)
{
 unsigned long offset;
 int i;

 spin_lock(&obj->page_table_lock);

 for (i = 0; i < PTRS_PER_IOPGD; i++) {
  u32 da;
  u32 *iopgd;

  da = i << IOPGD_SHIFT;
  iopgd = iopgd_offset(obj, da);
  offset = iopgd_index(da) * sizeof(da);

  if (!*iopgd)
   continue;

  if (iopgd_is_table(*iopgd))
   iopte_free(obj, iopte_offset(iopgd, 0), 1);

  *iopgd = 0;
  flush_iopte_range(obj->dev, obj->pd_dma, offset, 1);
 }

 flush_iotlb_all(obj);

 spin_unlock(&obj->page_table_lock);
}
