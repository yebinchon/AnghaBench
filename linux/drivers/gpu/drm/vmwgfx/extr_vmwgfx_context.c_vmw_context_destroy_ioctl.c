
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_object_file {int dummy; } ;
struct drm_vmw_context_arg {int cid; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 int TTM_REF_USAGE ;
 int ttm_ref_object_base_unref (struct ttm_object_file*,int ,int ) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;

int vmw_context_destroy_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_vmw_context_arg *arg = (struct drm_vmw_context_arg *)data;
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;

 return ttm_ref_object_base_unref(tfile, arg->cid, TTM_REF_USAGE);
}
