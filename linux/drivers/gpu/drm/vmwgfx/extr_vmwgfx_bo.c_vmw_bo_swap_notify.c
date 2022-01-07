
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {scalar_t__ destroy; } ;


 scalar_t__ vmw_bo_bo_free ;
 int vmw_bo_unmap (int ) ;
 int vmw_buffer_object (struct ttm_buffer_object*) ;
 scalar_t__ vmw_user_bo_destroy ;

void vmw_bo_swap_notify(struct ttm_buffer_object *bo)
{

 if (bo->destroy != vmw_bo_bo_free &&
     bo->destroy != vmw_user_bo_destroy)
  return;


 vmw_bo_unmap(vmw_buffer_object(bo));
}
