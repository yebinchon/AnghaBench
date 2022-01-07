
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable {int dummy; } ;
struct arm_v7s_io_pgtable {int l2_tables; int * pgd; } ;
typedef int arm_v7s_iopte ;


 int ARM_V7S_PTES_PER_LVL (int) ;
 scalar_t__ ARM_V7S_PTE_IS_TABLE (int ,int) ;
 int __arm_v7s_free_table (int *,int,struct arm_v7s_io_pgtable*) ;
 struct arm_v7s_io_pgtable* io_pgtable_to_data (struct io_pgtable*) ;
 int * iopte_deref (int ,int,struct arm_v7s_io_pgtable*) ;
 int kfree (struct arm_v7s_io_pgtable*) ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void arm_v7s_free_pgtable(struct io_pgtable *iop)
{
 struct arm_v7s_io_pgtable *data = io_pgtable_to_data(iop);
 int i;

 for (i = 0; i < ARM_V7S_PTES_PER_LVL(1); i++) {
  arm_v7s_iopte pte = data->pgd[i];

  if (ARM_V7S_PTE_IS_TABLE(pte, 1))
   __arm_v7s_free_table(iopte_deref(pte, 1, data),
          2, data);
 }
 __arm_v7s_free_table(data->pgd, 1, data);
 kmem_cache_destroy(data->l2_tables);
 kfree(data);
}
