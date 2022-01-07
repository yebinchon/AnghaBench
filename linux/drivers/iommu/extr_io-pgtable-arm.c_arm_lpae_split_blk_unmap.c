
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_iotlb_gather {int dummy; } ;
struct io_pgtable_cfg {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef int pte ;
typedef size_t phys_addr_t ;
typedef int arm_lpae_iopte ;


 size_t ARM_LPAE_BLOCK_SIZE (int,struct arm_lpae_io_pgtable*) ;
 size_t ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_LVL_IDX (unsigned long,int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_MAX_LEVELS ;
 scalar_t__ ARM_LPAE_PTE_TYPE_TABLE ;
 int GFP_ATOMIC ;
 scalar_t__ WARN_ON (int) ;
 int * __arm_lpae_alloc_pages (size_t,int ,struct io_pgtable_cfg*) ;
 int __arm_lpae_free_pages (int *,size_t,struct io_pgtable_cfg*) ;
 int __arm_lpae_init_pte (struct arm_lpae_io_pgtable*,size_t,int ,int,int *) ;
 size_t __arm_lpae_unmap (struct arm_lpae_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,int *) ;
 int arm_lpae_install_table (int *,int *,int ,struct io_pgtable_cfg*) ;
 int io_pgtable_tlb_add_page (TYPE_1__*,struct iommu_iotlb_gather*,unsigned long,size_t) ;
 int * iopte_deref (int ,struct arm_lpae_io_pgtable*) ;
 int iopte_prot (int ) ;
 size_t iopte_to_paddr (int ,struct arm_lpae_io_pgtable*) ;
 scalar_t__ iopte_type (int ,int) ;

__attribute__((used)) static size_t arm_lpae_split_blk_unmap(struct arm_lpae_io_pgtable *data,
           struct iommu_iotlb_gather *gather,
           unsigned long iova, size_t size,
           arm_lpae_iopte blk_pte, int lvl,
           arm_lpae_iopte *ptep)
{
 struct io_pgtable_cfg *cfg = &data->iop.cfg;
 arm_lpae_iopte pte, *tablep;
 phys_addr_t blk_paddr;
 size_t tablesz = ARM_LPAE_GRANULE(data);
 size_t split_sz = ARM_LPAE_BLOCK_SIZE(lvl, data);
 int i, unmap_idx = -1;

 if (WARN_ON(lvl == ARM_LPAE_MAX_LEVELS))
  return 0;

 tablep = __arm_lpae_alloc_pages(tablesz, GFP_ATOMIC, cfg);
 if (!tablep)
  return 0;

 if (size == split_sz)
  unmap_idx = ARM_LPAE_LVL_IDX(iova, lvl, data);

 blk_paddr = iopte_to_paddr(blk_pte, data);
 pte = iopte_prot(blk_pte);

 for (i = 0; i < tablesz / sizeof(pte); i++, blk_paddr += split_sz) {

  if (i == unmap_idx)
   continue;

  __arm_lpae_init_pte(data, blk_paddr, pte, lvl, &tablep[i]);
 }

 pte = arm_lpae_install_table(tablep, ptep, blk_pte, cfg);
 if (pte != blk_pte) {
  __arm_lpae_free_pages(tablep, tablesz, cfg);





  if (iopte_type(pte, lvl - 1) != ARM_LPAE_PTE_TYPE_TABLE)
   return 0;

  tablep = iopte_deref(pte, data);
 } else if (unmap_idx >= 0) {
  io_pgtable_tlb_add_page(&data->iop, gather, iova, size);
  return size;
 }

 return __arm_lpae_unmap(data, gather, iova, size, lvl, tablep);
}
