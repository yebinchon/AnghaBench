
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; int fmt; } ;
struct arm_lpae_io_pgtable {unsigned long pgd_size; TYPE_1__ iop; } ;
typedef int arm_lpae_iopte ;


 unsigned long ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 int ARM_LPAE_MAX_LEVELS ;
 int ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 int __arm_lpae_free_pages (int *,unsigned long,int *) ;
 int * iopte_deref (int ,struct arm_lpae_io_pgtable*) ;
 scalar_t__ iopte_leaf (int ,int,int ) ;

__attribute__((used)) static void __arm_lpae_free_pgtable(struct arm_lpae_io_pgtable *data, int lvl,
        arm_lpae_iopte *ptep)
{
 arm_lpae_iopte *start, *end;
 unsigned long table_size;

 if (lvl == ARM_LPAE_START_LVL(data))
  table_size = data->pgd_size;
 else
  table_size = ARM_LPAE_GRANULE(data);

 start = ptep;


 if (lvl == ARM_LPAE_MAX_LEVELS - 1)
  end = ptep;
 else
  end = (void *)ptep + table_size;

 while (ptep != end) {
  arm_lpae_iopte pte = *ptep++;

  if (!pte || iopte_leaf(pte, lvl, data->iop.fmt))
   continue;

  __arm_lpae_free_pgtable(data, lvl + 1, iopte_deref(pte, data));
 }

 __arm_lpae_free_pages(start, table_size, &data->iop.cfg);
}
