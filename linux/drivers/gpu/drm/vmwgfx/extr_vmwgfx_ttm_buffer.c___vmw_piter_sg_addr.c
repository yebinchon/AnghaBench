
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {int iter; } ;
typedef int dma_addr_t ;


 int sg_page_iter_dma_address (int *) ;

__attribute__((used)) static dma_addr_t __vmw_piter_sg_addr(struct vmw_piter *viter)
{
 return sg_page_iter_dma_address(&viter->iter);
}
