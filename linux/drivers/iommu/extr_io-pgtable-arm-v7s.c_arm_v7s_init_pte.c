
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_pgtable_cfg {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_v7s_io_pgtable {TYPE_1__ iop; } ;
typedef int phys_addr_t ;
typedef scalar_t__ arm_v7s_iopte ;


 size_t ARM_V7S_BLOCK_SIZE (int) ;
 scalar_t__* ARM_V7S_LVL_IDX (unsigned long,int) ;
 scalar_t__ ARM_V7S_PTE_IS_TABLE (scalar_t__,int) ;
 int EEXIST ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int __arm_v7s_set_pte (scalar_t__*,scalar_t__,int,struct io_pgtable_cfg*) ;
 size_t __arm_v7s_unmap (struct arm_v7s_io_pgtable*,int *,unsigned long,size_t,int,scalar_t__*) ;
 scalar_t__ arm_v7s_prot_to_pte (int,int,struct io_pgtable_cfg*) ;
 scalar_t__ arm_v7s_pte_to_cont (scalar_t__,int) ;
 scalar_t__ paddr_to_iopte (int ,int,struct io_pgtable_cfg*) ;
 int selftest_running ;

__attribute__((used)) static int arm_v7s_init_pte(struct arm_v7s_io_pgtable *data,
       unsigned long iova, phys_addr_t paddr, int prot,
       int lvl, int num_entries, arm_v7s_iopte *ptep)
{
 struct io_pgtable_cfg *cfg = &data->iop.cfg;
 arm_v7s_iopte pte;
 int i;

 for (i = 0; i < num_entries; i++)
  if (ARM_V7S_PTE_IS_TABLE(ptep[i], lvl)) {




   arm_v7s_iopte *tblp;
   size_t sz = ARM_V7S_BLOCK_SIZE(lvl);

   tblp = ptep - ARM_V7S_LVL_IDX(iova, lvl);
   if (WARN_ON(__arm_v7s_unmap(data, ((void*)0), iova + i * sz,
          sz, lvl, tblp) != sz))
    return -EINVAL;
  } else if (ptep[i]) {

   WARN_ON(!selftest_running);
   return -EEXIST;
  }

 pte = arm_v7s_prot_to_pte(prot, lvl, cfg);
 if (num_entries > 1)
  pte = arm_v7s_pte_to_cont(pte, lvl);

 pte |= paddr_to_iopte(paddr, lvl, cfg);

 __arm_v7s_set_pte(ptep, pte, num_entries, cfg);
 return 0;
}
