
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int quirks; scalar_t__ coherent_walk; } ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_PTE_NSTABLE ;
 int ARM_LPAE_PTE_SW_SYNC ;
 int ARM_LPAE_PTE_TYPE_TABLE ;
 int IO_PGTABLE_QUIRK_ARM_NS ;
 int WRITE_ONCE (int,int) ;
 int __arm_lpae_sync_pte (int*,struct io_pgtable_cfg*) ;
 int __pa (int*) ;
 int cmpxchg64_relaxed (int*,int,int) ;
 int dma_wmb () ;

__attribute__((used)) static arm_lpae_iopte arm_lpae_install_table(arm_lpae_iopte *table,
          arm_lpae_iopte *ptep,
          arm_lpae_iopte curr,
          struct io_pgtable_cfg *cfg)
{
 arm_lpae_iopte old, new;

 new = __pa(table) | ARM_LPAE_PTE_TYPE_TABLE;
 if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS)
  new |= ARM_LPAE_PTE_NSTABLE;






 dma_wmb();

 old = cmpxchg64_relaxed(ptep, curr, new);

 if (cfg->coherent_walk || (old & ARM_LPAE_PTE_SW_SYNC))
  return old;


 __arm_lpae_sync_pte(ptep, cfg);
 if (old == curr)
  WRITE_ONCE(*ptep, new | ARM_LPAE_PTE_SW_SYNC);

 return old;
}
