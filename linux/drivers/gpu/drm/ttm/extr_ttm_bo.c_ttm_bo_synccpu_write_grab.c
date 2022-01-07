
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int cpu_writers; } ;


 int atomic_inc (int *) ;
 scalar_t__ likely (int) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_synccpu_write_grab(struct ttm_buffer_object *bo, bool no_wait)
{
 int ret = 0;





 ret = ttm_bo_reserve(bo, 1, no_wait, ((void*)0));
 if (unlikely(ret != 0))
  return ret;
 ret = ttm_bo_wait(bo, 1, no_wait);
 if (likely(ret == 0))
  atomic_inc(&bo->cpu_writers);
 ttm_bo_unreserve(bo);
 return ret;
}
