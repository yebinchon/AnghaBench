
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mem_type; } ;
struct TYPE_3__ {int resv; } ;
struct ttm_buffer_object {int * ttm; TYPE_2__ mem; TYPE_1__ base; } ;


 int TTM_PL_SYSTEM ;
 int dma_resv_copy_fences (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 int ttm_buffer_object_transfer (struct ttm_buffer_object*,struct ttm_buffer_object**) ;

int ttm_bo_pipeline_gutting(struct ttm_buffer_object *bo)
{
 struct ttm_buffer_object *ghost;
 int ret;

 ret = ttm_buffer_object_transfer(bo, &ghost);
 if (ret)
  return ret;

 ret = dma_resv_copy_fences(ghost->base.resv, bo->base.resv);

 if (ret)
  ttm_bo_wait(bo, 0, 0);

 memset(&bo->mem, 0, sizeof(bo->mem));
 bo->mem.mem_type = TTM_PL_SYSTEM;
 bo->ttm = ((void*)0);

 ttm_bo_unreserve(ghost);
 ttm_bo_put(ghost);

 return 0;
}
