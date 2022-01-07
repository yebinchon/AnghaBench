
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct io_pgtable_ops {int dummy; } ;
struct TYPE_2__ {int cfg; } ;
struct arm_v7s_io_pgtable {TYPE_1__ iop; int * pgd; } ;
typedef unsigned long phys_addr_t ;
typedef int arm_v7s_iopte ;


 unsigned long ARM_V7S_CONT_PAGES ;
 int ARM_V7S_LVL_IDX (unsigned long,int) ;
 unsigned long ARM_V7S_LVL_MASK (int) ;
 scalar_t__ ARM_V7S_PTE_IS_TABLE (int ,int) ;
 int ARM_V7S_PTE_IS_VALID (int ) ;
 int READ_ONCE (int ) ;
 scalar_t__ arm_v7s_pte_is_cont (int ,int) ;
 struct arm_v7s_io_pgtable* io_pgtable_ops_to_data (struct io_pgtable_ops*) ;
 int * iopte_deref (int ,int,struct arm_v7s_io_pgtable*) ;
 unsigned long iopte_to_paddr (int ,int,int *) ;

__attribute__((used)) static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
     unsigned long iova)
{
 struct arm_v7s_io_pgtable *data = io_pgtable_ops_to_data(ops);
 arm_v7s_iopte *ptep = data->pgd, pte;
 int lvl = 0;
 u32 mask;

 do {
  ptep += ARM_V7S_LVL_IDX(iova, ++lvl);
  pte = READ_ONCE(*ptep);
  ptep = iopte_deref(pte, lvl, data);
 } while (ARM_V7S_PTE_IS_TABLE(pte, lvl));

 if (!ARM_V7S_PTE_IS_VALID(pte))
  return 0;

 mask = ARM_V7S_LVL_MASK(lvl);
 if (arm_v7s_pte_is_cont(pte, lvl))
  mask *= ARM_V7S_CONT_PAGES;
 return iopte_to_paddr(pte, lvl, &data->iop.cfg) | (iova & ~mask);
}
