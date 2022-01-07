
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_buffer_object {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;


 int kfree (struct vmw_buffer_object*) ;
 int vmw_bo_unmap (struct vmw_buffer_object*) ;
 struct vmw_buffer_object* vmw_buffer_object (struct ttm_buffer_object*) ;

void vmw_bo_bo_free(struct ttm_buffer_object *bo)
{
 struct vmw_buffer_object *vmw_bo = vmw_buffer_object(bo);

 vmw_bo_unmap(vmw_bo);
 kfree(vmw_bo);
}
