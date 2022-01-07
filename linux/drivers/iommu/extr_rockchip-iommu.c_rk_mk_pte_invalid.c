
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RK_PTE_PAGE_VALID ;

__attribute__((used)) static u32 rk_mk_pte_invalid(u32 pte)
{
 return pte & ~RK_PTE_PAGE_VALID;
}
