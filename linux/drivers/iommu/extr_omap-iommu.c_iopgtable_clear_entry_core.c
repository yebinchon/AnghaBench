
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int pd_dma; int dev; } ;
typedef int dma_addr_t ;
typedef int da ;


 int IOLARGE_MASK ;
 size_t IOPGD_SIZE ;
 int IOPGD_SUPER ;
 int IOPTE_LARGE ;
 size_t IOPTE_SIZE ;
 int IOSUPER_MASK ;
 int PTRS_PER_IOPTE ;
 int flush_iopte_range (int ,int ,unsigned long,int) ;
 int iopgd_index (int) ;
 scalar_t__ iopgd_is_table (int) ;
 int* iopgd_offset (struct omap_iommu*,int) ;
 int iopgd_page_paddr (int*) ;
 int iopte_free (struct omap_iommu*,int*,int) ;
 int iopte_index (int) ;
 int* iopte_offset (int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static size_t iopgtable_clear_entry_core(struct omap_iommu *obj, u32 da)
{
 size_t bytes;
 u32 *iopgd = iopgd_offset(obj, da);
 int nent = 1;
 dma_addr_t pt_dma;
 unsigned long pd_offset = iopgd_index(da) * sizeof(da);
 unsigned long pt_offset = iopte_index(da) * sizeof(da);

 if (!*iopgd)
  return 0;

 if (iopgd_is_table(*iopgd)) {
  int i;
  u32 *iopte = iopte_offset(iopgd, da);

  bytes = IOPTE_SIZE;
  if (*iopte & IOPTE_LARGE) {
   nent *= 16;

   iopte = iopte_offset(iopgd, (da & IOLARGE_MASK));
  }
  bytes *= nent;
  memset(iopte, 0, nent * sizeof(*iopte));
  pt_dma = iopgd_page_paddr(iopgd);
  flush_iopte_range(obj->dev, pt_dma, pt_offset, nent);




  iopte = iopte_offset(iopgd, 0);
  for (i = 0; i < PTRS_PER_IOPTE; i++)
   if (iopte[i])
    goto out;

  iopte_free(obj, iopte, 1);
  nent = 1;
 } else {
  bytes = IOPGD_SIZE;
  if ((*iopgd & IOPGD_SUPER) == IOPGD_SUPER) {
   nent *= 16;

   iopgd = iopgd_offset(obj, (da & IOSUPER_MASK));
  }
  bytes *= nent;
 }
 memset(iopgd, 0, nent * sizeof(*iopgd));
 flush_iopte_range(obj->dev, obj->pd_dma, pd_offset, nent);
out:
 return bytes;
}
