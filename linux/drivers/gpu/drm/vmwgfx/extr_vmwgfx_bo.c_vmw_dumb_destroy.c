
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int tfile; } ;


 int TTM_REF_USAGE ;
 int ttm_ref_object_base_unref (int ,int ,int ) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;

int vmw_dumb_destroy(struct drm_file *file_priv,
       struct drm_device *dev,
       uint32_t handle)
{
 return ttm_ref_object_base_unref(vmw_fpriv(file_priv)->tfile,
      handle, TTM_REF_USAGE);
}
