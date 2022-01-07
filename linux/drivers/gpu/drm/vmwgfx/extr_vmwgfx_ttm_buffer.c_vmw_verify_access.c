
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_object_file {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct drm_file {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 TYPE_1__* vmw_fpriv (struct drm_file*) ;
 int vmw_user_bo_verify_access (struct ttm_buffer_object*,struct ttm_object_file*) ;

__attribute__((used)) static int vmw_verify_access(struct ttm_buffer_object *bo, struct file *filp)
{
 struct ttm_object_file *tfile =
  vmw_fpriv((struct drm_file *)filp->private_data)->tfile;

 return vmw_user_bo_verify_access(bo, tfile);
}
