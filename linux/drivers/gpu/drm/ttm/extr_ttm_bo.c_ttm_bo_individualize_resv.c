
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _resv; int * resv; } ;
struct ttm_buffer_object {TYPE_1__ base; } ;


 int BUG_ON (int) ;
 int dma_resv_copy_fences (int *,int *) ;
 int dma_resv_trylock (int *) ;
 int dma_resv_unlock (int *) ;

__attribute__((used)) static int ttm_bo_individualize_resv(struct ttm_buffer_object *bo)
{
 int r;

 if (bo->base.resv == &bo->base._resv)
  return 0;

 BUG_ON(!dma_resv_trylock(&bo->base._resv));

 r = dma_resv_copy_fences(&bo->base._resv, bo->base.resv);
 if (r)
  dma_resv_unlock(&bo->base._resv);

 return r;
}
