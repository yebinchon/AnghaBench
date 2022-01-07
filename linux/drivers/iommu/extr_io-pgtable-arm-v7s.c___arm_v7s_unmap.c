
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_iotlb_gather {int dummy; } ;
struct TYPE_2__ {int quirks; } ;
struct io_pgtable {TYPE_1__ cfg; } ;
struct arm_v7s_io_pgtable {int split_lock; struct io_pgtable iop; } ;
typedef int arm_v7s_iopte ;


 size_t ARM_V7S_BLOCK_SIZE (int) ;
 int ARM_V7S_CONT_PAGES ;
 int ARM_V7S_LVL_IDX (unsigned long,int) ;
 size_t ARM_V7S_LVL_SHIFT (int) ;
 scalar_t__ ARM_V7S_PTE_IS_TABLE (int ,int) ;
 int ARM_V7S_PTE_IS_VALID (int ) ;
 int IO_PGTABLE_QUIRK_NON_STRICT ;
 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int __arm_v7s_free_table (int *,int,struct arm_v7s_io_pgtable*) ;
 int __arm_v7s_set_pte (int *,int ,int,TYPE_1__*) ;
 scalar_t__ arm_v7s_pte_is_cont (int ,int) ;
 size_t arm_v7s_split_blk_unmap (struct arm_v7s_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int ,int *) ;
 int arm_v7s_split_cont (struct arm_v7s_io_pgtable*,unsigned long,int,int,int *) ;
 int io_pgtable_tlb_add_page (struct io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t) ;
 int io_pgtable_tlb_flush_walk (struct io_pgtable*,unsigned long,size_t,size_t) ;
 int * iopte_deref (int ,int,struct arm_v7s_io_pgtable*) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
         struct iommu_iotlb_gather *gather,
         unsigned long iova, size_t size, int lvl,
         arm_v7s_iopte *ptep)
{
 arm_v7s_iopte pte[ARM_V7S_CONT_PAGES];
 struct io_pgtable *iop = &data->iop;
 int idx, i = 0, num_entries = size >> ARM_V7S_LVL_SHIFT(lvl);


 if (WARN_ON(lvl > 2))
  return 0;

 idx = ARM_V7S_LVL_IDX(iova, lvl);
 ptep += idx;
 do {
  pte[i] = READ_ONCE(ptep[i]);
  if (WARN_ON(!ARM_V7S_PTE_IS_VALID(pte[i])))
   return 0;
 } while (++i < num_entries);
 if (num_entries <= 1 && arm_v7s_pte_is_cont(pte[0], lvl)) {
  unsigned long flags;

  spin_lock_irqsave(&data->split_lock, flags);
  pte[0] = arm_v7s_split_cont(data, iova, idx, lvl, ptep);
  spin_unlock_irqrestore(&data->split_lock, flags);
 }


 if (num_entries) {
  size_t blk_size = ARM_V7S_BLOCK_SIZE(lvl);

  __arm_v7s_set_pte(ptep, 0, num_entries, &iop->cfg);

  for (i = 0; i < num_entries; i++) {
   if (ARM_V7S_PTE_IS_TABLE(pte[i], lvl)) {

    io_pgtable_tlb_flush_walk(iop, iova, blk_size,
      ARM_V7S_BLOCK_SIZE(lvl + 1));
    ptep = iopte_deref(pte[i], lvl, data);
    __arm_v7s_free_table(ptep, lvl + 1, data);
   } else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {





    smp_wmb();
   } else {
    io_pgtable_tlb_add_page(iop, gather, iova, blk_size);
   }
   iova += blk_size;
  }
  return size;
 } else if (lvl == 1 && !ARM_V7S_PTE_IS_TABLE(pte[0], lvl)) {




  return arm_v7s_split_blk_unmap(data, gather, iova, size, pte[0],
            ptep);
 }


 ptep = iopte_deref(pte[0], lvl, data);
 return __arm_v7s_unmap(data, gather, iova, size, lvl + 1, ptep);
}
