
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


 int ARM_V7S_LVL_IDX (unsigned long,int) ;
 size_t ARM_V7S_LVL_SHIFT (int) ;
 scalar_t__ ARM_V7S_PTE_IS_TABLE (scalar_t__,int) ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__* __arm_v7s_alloc_table (int,int ,struct arm_v7s_io_pgtable*) ;
 int __arm_v7s_free_table (scalar_t__*,int,struct arm_v7s_io_pgtable*) ;
 int __arm_v7s_pte_sync (scalar_t__*,int,struct io_pgtable_cfg*) ;
 int arm_v7s_init_pte (struct arm_v7s_io_pgtable*,unsigned long,int ,int,int,int,scalar_t__*) ;
 scalar_t__ arm_v7s_install_table (scalar_t__*,scalar_t__*,int ,struct io_pgtable_cfg*) ;
 scalar_t__* iopte_deref (scalar_t__,int,struct arm_v7s_io_pgtable*) ;
 int selftest_running ;

__attribute__((used)) static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
    phys_addr_t paddr, size_t size, int prot,
    int lvl, arm_v7s_iopte *ptep)
{
 struct io_pgtable_cfg *cfg = &data->iop.cfg;
 arm_v7s_iopte pte, *cptep;
 int num_entries = size >> ARM_V7S_LVL_SHIFT(lvl);


 ptep += ARM_V7S_LVL_IDX(iova, lvl);


 if (num_entries)
  return arm_v7s_init_pte(data, iova, paddr, prot,
     lvl, num_entries, ptep);


 if (WARN_ON(lvl == 2))
  return -EINVAL;


 pte = READ_ONCE(*ptep);
 if (!pte) {
  cptep = __arm_v7s_alloc_table(lvl + 1, GFP_ATOMIC, data);
  if (!cptep)
   return -ENOMEM;

  pte = arm_v7s_install_table(cptep, ptep, 0, cfg);
  if (pte)
   __arm_v7s_free_table(cptep, lvl + 1, data);
 } else {

  __arm_v7s_pte_sync(ptep, 1, cfg);
 }

 if (ARM_V7S_PTE_IS_TABLE(pte, lvl)) {
  cptep = iopte_deref(pte, lvl, data);
 } else if (pte) {

  WARN_ON(!selftest_running);
  return -EEXIST;
 }


 return __arm_v7s_map(data, iova, paddr, size, prot, lvl + 1, cptep);
}
