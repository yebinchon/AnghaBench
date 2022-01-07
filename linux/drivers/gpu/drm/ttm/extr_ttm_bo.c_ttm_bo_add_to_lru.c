
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int mem; } ;


 int ttm_bo_add_mem_to_lru (struct ttm_buffer_object*,int *) ;

void ttm_bo_add_to_lru(struct ttm_buffer_object *bo)
{
 ttm_bo_add_mem_to_lru(bo, &bo->mem);
}
