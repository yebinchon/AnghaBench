
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_pgtable_ops {int dummy; } ;
struct TYPE_2__ {int fmt; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; int * pgd; } ;
typedef unsigned long phys_addr_t ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_BLOCK_SIZE (int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_LVL_IDX (unsigned long,int,struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_MAX_LEVELS ;
 int ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 int READ_ONCE (int ) ;
 struct arm_lpae_io_pgtable* io_pgtable_ops_to_data (struct io_pgtable_ops*) ;
 int * iopte_deref (int ,struct arm_lpae_io_pgtable*) ;
 scalar_t__ iopte_leaf (int ,int,int ) ;
 unsigned long iopte_to_paddr (int ,struct arm_lpae_io_pgtable*) ;

__attribute__((used)) static phys_addr_t arm_lpae_iova_to_phys(struct io_pgtable_ops *ops,
      unsigned long iova)
{
 struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 arm_lpae_iopte pte, *ptep = data->pgd;
 int lvl = ARM_LPAE_START_LVL(data);

 do {

  if (!ptep)
   return 0;


  ptep += ARM_LPAE_LVL_IDX(iova, lvl, data);
  pte = READ_ONCE(*ptep);


  if (!pte)
   return 0;


  if (iopte_leaf(pte, lvl, data->iop.fmt))
   goto found_translation;


  ptep = iopte_deref(pte, data);
 } while (++lvl < ARM_LPAE_MAX_LEVELS);


 return 0;

found_translation:
 iova &= (ARM_LPAE_BLOCK_SIZE(lvl, data) - 1);
 return iopte_to_paddr(pte, data) | iova;
}
