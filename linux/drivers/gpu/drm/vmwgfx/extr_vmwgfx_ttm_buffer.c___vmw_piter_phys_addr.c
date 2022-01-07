
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {size_t i; int * pages; } ;
typedef int dma_addr_t ;


 int page_to_phys (int ) ;

__attribute__((used)) static dma_addr_t __vmw_piter_phys_addr(struct vmw_piter *viter)
{
 return page_to_phys(viter->pages[viter->i]);
}
