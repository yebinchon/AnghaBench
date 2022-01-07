
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {int (* dma_address ) (struct vmw_piter*) ;} ;
typedef int dma_addr_t ;


 int stub1 (struct vmw_piter*) ;

__attribute__((used)) static inline dma_addr_t vmw_piter_dma_addr(struct vmw_piter *viter)
{
 return viter->dma_address(viter);
}
