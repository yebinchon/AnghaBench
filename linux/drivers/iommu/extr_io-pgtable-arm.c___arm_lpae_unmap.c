
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_iotlb_gather {int dummy; } ;
struct TYPE_2__ {int quirks; } ;
struct io_pgtable {int fmt; TYPE_1__ cfg; } ;
struct arm_lpae_io_pgtable {struct io_pgtable iop; } ;
typedef int arm_lpae_iopte ;


 size_t ARM_LPAE_BLOCK_SIZE (int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_LVL_IDX (unsigned long,int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_MAX_LEVELS ;
 int IO_PGTABLE_QUIRK_NON_STRICT ;
 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int __arm_lpae_free_pgtable (struct arm_lpae_io_pgtable*,int,int *) ;
 int __arm_lpae_set_pte (int *,int ,TYPE_1__*) ;
 size_t arm_lpae_split_blk_unmap (struct arm_lpae_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int ,int,int *) ;
 int io_pgtable_tlb_add_page (struct io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t) ;
 int io_pgtable_tlb_flush_walk (struct io_pgtable*,unsigned long,size_t,int ) ;
 int * iopte_deref (int ,struct arm_lpae_io_pgtable*) ;
 scalar_t__ iopte_leaf (int ,int,int ) ;
 int smp_wmb () ;

__attribute__((used)) static size_t __arm_lpae_unmap(struct arm_lpae_io_pgtable *data,
          struct iommu_iotlb_gather *gather,
          unsigned long iova, size_t size, int lvl,
          arm_lpae_iopte *ptep)
{
 arm_lpae_iopte pte;
 struct io_pgtable *iop = &data->iop;


 if (WARN_ON(lvl == ARM_LPAE_MAX_LEVELS))
  return 0;

 ptep += ARM_LPAE_LVL_IDX(iova, lvl, data);
 pte = READ_ONCE(*ptep);
 if (WARN_ON(!pte))
  return 0;


 if (size == ARM_LPAE_BLOCK_SIZE(lvl, data)) {
  __arm_lpae_set_pte(ptep, 0, &iop->cfg);

  if (!iopte_leaf(pte, lvl, iop->fmt)) {

   io_pgtable_tlb_flush_walk(iop, iova, size,
        ARM_LPAE_GRANULE(data));
   ptep = iopte_deref(pte, data);
   __arm_lpae_free_pgtable(data, lvl + 1, ptep);
  } else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {





   smp_wmb();
  } else {
   io_pgtable_tlb_add_page(iop, gather, iova, size);
  }

  return size;
 } else if (iopte_leaf(pte, lvl, iop->fmt)) {




  return arm_lpae_split_blk_unmap(data, gather, iova, size, pte,
      lvl + 1, ptep);
 }


 ptep = iopte_deref(pte, data);
 return __arm_lpae_unmap(data, gather, iova, size, lvl + 1, ptep);
}
