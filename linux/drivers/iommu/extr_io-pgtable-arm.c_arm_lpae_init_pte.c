
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fmt; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef int phys_addr_t ;
typedef int arm_lpae_iopte ;


 size_t ARM_LPAE_BLOCK_SIZE (int,struct arm_lpae_io_pgtable*) ;
 int * ARM_LPAE_LVL_IDX (unsigned long,int,struct arm_lpae_io_pgtable*) ;
 scalar_t__ ARM_LPAE_PTE_TYPE_TABLE ;
 int EEXIST ;
 int EINVAL ;
 int WARN_ON (int) ;
 int __arm_lpae_init_pte (struct arm_lpae_io_pgtable*,int ,int ,int,int *) ;
 size_t __arm_lpae_unmap (struct arm_lpae_io_pgtable*,int *,unsigned long,size_t,int,int *) ;
 scalar_t__ iopte_leaf (int ,int,int ) ;
 scalar_t__ iopte_type (int ,int) ;
 int selftest_running ;

__attribute__((used)) static int arm_lpae_init_pte(struct arm_lpae_io_pgtable *data,
        unsigned long iova, phys_addr_t paddr,
        arm_lpae_iopte prot, int lvl,
        arm_lpae_iopte *ptep)
{
 arm_lpae_iopte pte = *ptep;

 if (iopte_leaf(pte, lvl, data->iop.fmt)) {

  WARN_ON(!selftest_running);
  return -EEXIST;
 } else if (iopte_type(pte, lvl) == ARM_LPAE_PTE_TYPE_TABLE) {




  arm_lpae_iopte *tblp;
  size_t sz = ARM_LPAE_BLOCK_SIZE(lvl, data);

  tblp = ptep - ARM_LPAE_LVL_IDX(iova, lvl, data);
  if (__arm_lpae_unmap(data, ((void*)0), iova, sz, lvl, tblp) != sz) {
   WARN_ON(1);
   return -EINVAL;
  }
 }

 __arm_lpae_init_pte(data, paddr, prot, lvl, ptep);
 return 0;
}
