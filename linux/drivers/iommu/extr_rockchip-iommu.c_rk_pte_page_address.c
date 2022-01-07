
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int phys_addr_t ;


 int RK_PTE_PAGE_ADDRESS_MASK ;

__attribute__((used)) static inline phys_addr_t rk_pte_page_address(u32 pte)
{
 return (phys_addr_t)pte & RK_PTE_PAGE_ADDRESS_MASK;
}
