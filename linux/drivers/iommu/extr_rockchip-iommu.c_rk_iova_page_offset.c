
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int RK_IOVA_PAGE_MASK ;
 int RK_IOVA_PAGE_SHIFT ;

__attribute__((used)) static u32 rk_iova_page_offset(dma_addr_t iova)
{
 return (u32)(iova & RK_IOVA_PAGE_MASK) >> RK_IOVA_PAGE_SHIFT;
}
