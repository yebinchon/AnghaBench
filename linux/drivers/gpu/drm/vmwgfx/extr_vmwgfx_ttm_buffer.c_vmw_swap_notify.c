
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;


 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 int vmw_bo_swap_notify (struct ttm_buffer_object*) ;

__attribute__((used)) static void vmw_swap_notify(struct ttm_buffer_object *bo)
{
 vmw_bo_swap_notify(bo);
 (void) ttm_bo_wait(bo, 0, 0);
}
