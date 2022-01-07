
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int PAGE_SHIFT ;

__attribute__((used)) static void vmw_mob_assign_ppn(u32 **addr, dma_addr_t val)
{
 *(*addr)++ = val >> PAGE_SHIFT;
}
