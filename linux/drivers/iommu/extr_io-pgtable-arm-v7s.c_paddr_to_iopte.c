
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int dummy; } ;
typedef int phys_addr_t ;
typedef int arm_v7s_iopte ;


 int ARM_V7S_ATTR_MTK_PA_BIT32 ;
 int ARM_V7S_ATTR_MTK_PA_BIT33 ;
 int ARM_V7S_LVL_MASK (int) ;
 int BIT_ULL (int) ;
 int arm_v7s_is_mtk_enabled (struct io_pgtable_cfg*) ;

__attribute__((used)) static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
        struct io_pgtable_cfg *cfg)
{
 arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);

 if (!arm_v7s_is_mtk_enabled(cfg))
  return pte;

 if (paddr & BIT_ULL(32))
  pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
 if (paddr & BIT_ULL(33))
  pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
 return pte;
}
