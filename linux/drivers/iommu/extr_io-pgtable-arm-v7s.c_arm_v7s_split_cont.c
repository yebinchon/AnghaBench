
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable {int cfg; } ;
struct arm_v7s_io_pgtable {struct io_pgtable iop; } ;
typedef scalar_t__ arm_v7s_iopte ;


 size_t ARM_V7S_BLOCK_SIZE (int) ;
 int ARM_V7S_CONT_PAGES ;
 int __arm_v7s_pte_sync (scalar_t__*,int,int *) ;
 scalar_t__ arm_v7s_cont_to_pte (scalar_t__,int) ;
 int arm_v7s_pte_is_cont (scalar_t__,int) ;
 int io_pgtable_tlb_flush_leaf (struct io_pgtable*,unsigned long,size_t,size_t) ;

__attribute__((used)) static arm_v7s_iopte arm_v7s_split_cont(struct arm_v7s_io_pgtable *data,
     unsigned long iova, int idx, int lvl,
     arm_v7s_iopte *ptep)
{
 struct io_pgtable *iop = &data->iop;
 arm_v7s_iopte pte;
 size_t size = ARM_V7S_BLOCK_SIZE(lvl);
 int i;


 pte = *ptep;
 if (!arm_v7s_pte_is_cont(pte, lvl))
  return pte;

 ptep -= idx & (ARM_V7S_CONT_PAGES - 1);
 pte = arm_v7s_cont_to_pte(pte, lvl);
 for (i = 0; i < ARM_V7S_CONT_PAGES; i++)
  ptep[i] = pte + i * size;

 __arm_v7s_pte_sync(ptep, ARM_V7S_CONT_PAGES, &iop->cfg);

 size *= ARM_V7S_CONT_PAGES;
 io_pgtable_tlb_flush_leaf(iop, iova, size, size);
 return pte;
}
