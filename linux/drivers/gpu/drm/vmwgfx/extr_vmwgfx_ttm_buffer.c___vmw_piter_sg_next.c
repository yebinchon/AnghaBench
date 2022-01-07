
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {int iter; } ;


 scalar_t__ __sg_page_iter_dma_next (int *) ;
 int __vmw_piter_non_sg_next (struct vmw_piter*) ;

__attribute__((used)) static bool __vmw_piter_sg_next(struct vmw_piter *viter)
{
 bool ret = __vmw_piter_non_sg_next(viter);

 return __sg_page_iter_dma_next(&viter->iter) && ret;
}
