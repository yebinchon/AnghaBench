
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_pgtable_cfg {size_t pgsize_bitmap; int coherent_walk; } ;
struct TYPE_2__ {int fmt; struct io_pgtable_cfg cfg; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef int phys_addr_t ;
typedef int arm_lpae_iopte ;


 size_t ARM_LPAE_BLOCK_SIZE (int,struct arm_lpae_io_pgtable*) ;
 size_t ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_LVL_IDX (unsigned long,int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_MAX_LEVELS ;
 int ARM_LPAE_PTE_SW_SYNC ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int READ_ONCE (int) ;
 scalar_t__ WARN_ON (int) ;
 int* __arm_lpae_alloc_pages (size_t,int ,struct io_pgtable_cfg*) ;
 int __arm_lpae_free_pages (int*,size_t,struct io_pgtable_cfg*) ;
 int __arm_lpae_sync_pte (int*,struct io_pgtable_cfg*) ;
 int arm_lpae_init_pte (struct arm_lpae_io_pgtable*,unsigned long,int ,int,int,int*) ;
 int arm_lpae_install_table (int*,int*,int ,struct io_pgtable_cfg*) ;
 int* iopte_deref (int,struct arm_lpae_io_pgtable*) ;
 int iopte_leaf (int,int,int ) ;
 int selftest_running ;

__attribute__((used)) static int __arm_lpae_map(struct arm_lpae_io_pgtable *data, unsigned long iova,
     phys_addr_t paddr, size_t size, arm_lpae_iopte prot,
     int lvl, arm_lpae_iopte *ptep)
{
 arm_lpae_iopte *cptep, pte;
 size_t block_size = ARM_LPAE_BLOCK_SIZE(lvl, data);
 size_t tblsz = ARM_LPAE_GRANULE(data);
 struct io_pgtable_cfg *cfg = &data->iop.cfg;


 ptep += ARM_LPAE_LVL_IDX(iova, lvl, data);


 if (size == block_size && (size & cfg->pgsize_bitmap))
  return arm_lpae_init_pte(data, iova, paddr, prot, lvl, ptep);


 if (WARN_ON(lvl >= ARM_LPAE_MAX_LEVELS - 1))
  return -EINVAL;


 pte = READ_ONCE(*ptep);
 if (!pte) {
  cptep = __arm_lpae_alloc_pages(tblsz, GFP_ATOMIC, cfg);
  if (!cptep)
   return -ENOMEM;

  pte = arm_lpae_install_table(cptep, ptep, 0, cfg);
  if (pte)
   __arm_lpae_free_pages(cptep, tblsz, cfg);
 } else if (!cfg->coherent_walk && !(pte & ARM_LPAE_PTE_SW_SYNC)) {
  __arm_lpae_sync_pte(ptep, cfg);
 }

 if (pte && !iopte_leaf(pte, lvl, data->iop.fmt)) {
  cptep = iopte_deref(pte, data);
 } else if (pte) {

  WARN_ON(!selftest_running);
  return -EEXIST;
 }


 return __arm_lpae_map(data, iova, paddr, size, prot, lvl + 1, cptep);
}
