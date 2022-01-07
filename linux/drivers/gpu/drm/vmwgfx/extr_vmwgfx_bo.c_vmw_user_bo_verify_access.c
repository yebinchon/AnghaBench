
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct vmw_user_buffer_object {TYPE_1__ prime; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_buffer_object {scalar_t__ destroy; } ;


 int DRM_ERROR (char*) ;
 int EPERM ;
 scalar_t__ likely (int ) ;
 int ttm_ref_object_exists (struct ttm_object_file*,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vmw_user_bo_destroy ;
 struct vmw_user_buffer_object* vmw_user_buffer_object (struct ttm_buffer_object*) ;

int vmw_user_bo_verify_access(struct ttm_buffer_object *bo,
         struct ttm_object_file *tfile)
{
 struct vmw_user_buffer_object *vmw_user_bo;

 if (unlikely(bo->destroy != vmw_user_bo_destroy))
  return -EPERM;

 vmw_user_bo = vmw_user_buffer_object(bo);


 if (likely(ttm_ref_object_exists(tfile, &vmw_user_bo->prime.base)))
  return 0;

 DRM_ERROR("Could not grant buffer access.\n");
 return -EPERM;
}
