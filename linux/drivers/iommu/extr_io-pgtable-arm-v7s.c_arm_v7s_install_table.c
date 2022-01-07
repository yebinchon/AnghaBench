
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int quirks; } ;
typedef int arm_v7s_iopte ;


 int ARM_V7S_ATTR_NS_TABLE ;
 int ARM_V7S_PTE_TYPE_TABLE ;
 int IO_PGTABLE_QUIRK_ARM_NS ;
 int __arm_v7s_pte_sync (int*,int,struct io_pgtable_cfg*) ;
 int cmpxchg_relaxed (int*,int,int) ;
 int dma_wmb () ;
 int virt_to_phys (int*) ;

__attribute__((used)) static arm_v7s_iopte arm_v7s_install_table(arm_v7s_iopte *table,
        arm_v7s_iopte *ptep,
        arm_v7s_iopte curr,
        struct io_pgtable_cfg *cfg)
{
 arm_v7s_iopte old, new;

 new = virt_to_phys(table) | ARM_V7S_PTE_TYPE_TABLE;
 if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS)
  new |= ARM_V7S_ATTR_NS_TABLE;






 dma_wmb();

 old = cmpxchg_relaxed(ptep, curr, new);
 __arm_v7s_pte_sync(ptep, 1, cfg);

 return old;
}
