
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_v7s_iopte ;


 int ARM_V7S_ATTR_XN (int) ;
 int ARM_V7S_CONT_PAGE_TEX_MASK ;
 int ARM_V7S_CONT_PAGE_TEX_SHIFT ;
 int ARM_V7S_CONT_PAGE_XN_SHIFT ;
 int ARM_V7S_CONT_SECTION ;
 int ARM_V7S_PTE_TYPE_CONT_PAGE ;
 int ARM_V7S_PTE_TYPE_PAGE ;

__attribute__((used)) static arm_v7s_iopte arm_v7s_pte_to_cont(arm_v7s_iopte pte, int lvl)
{
 if (lvl == 1) {
  pte |= ARM_V7S_CONT_SECTION;
 } else if (lvl == 2) {
  arm_v7s_iopte xn = pte & ARM_V7S_ATTR_XN(lvl);
  arm_v7s_iopte tex = pte & ARM_V7S_CONT_PAGE_TEX_MASK;

  pte ^= xn | tex | ARM_V7S_PTE_TYPE_PAGE;
  pte |= (xn << ARM_V7S_CONT_PAGE_XN_SHIFT) |
         (tex << ARM_V7S_CONT_PAGE_TEX_SHIFT) |
         ARM_V7S_PTE_TYPE_CONT_PAGE;
 }
 return pte;
}
