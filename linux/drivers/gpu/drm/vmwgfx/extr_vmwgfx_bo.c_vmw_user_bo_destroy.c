
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_user_buffer_object {int vbo; } ;
struct ttm_buffer_object {int dummy; } ;


 int prime ;
 int ttm_prime_object_kfree (struct vmw_user_buffer_object*,int ) ;
 int vmw_bo_unmap (int *) ;
 struct vmw_user_buffer_object* vmw_user_buffer_object (struct ttm_buffer_object*) ;

__attribute__((used)) static void vmw_user_bo_destroy(struct ttm_buffer_object *bo)
{
 struct vmw_user_buffer_object *vmw_user_bo = vmw_user_buffer_object(bo);

 vmw_bo_unmap(&vmw_user_bo->vbo);
 ttm_prime_object_kfree(vmw_user_bo, prime);
}
