
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int reservation_sem; } ;
struct vmw_buffer_object {int dummy; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int tfile; } ;


 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_user_bo_alloc (struct vmw_private*,int ,int,int,int *,struct vmw_buffer_object**,int *) ;

int vmw_dumb_create(struct drm_file *file_priv,
      struct drm_device *dev,
      struct drm_mode_create_dumb *args)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct vmw_buffer_object *vbo;
 int ret;

 args->pitch = args->width * ((args->bpp + 7) / 8);
 args->size = args->pitch * args->height;

 ret = ttm_read_lock(&dev_priv->reservation_sem, 1);
 if (unlikely(ret != 0))
  return ret;

 ret = vmw_user_bo_alloc(dev_priv, vmw_fpriv(file_priv)->tfile,
        args->size, 0, &args->handle,
        &vbo, ((void*)0));
 if (unlikely(ret != 0))
  goto out_no_bo;

 vmw_bo_unreference(&vbo);
out_no_bo:
 ttm_read_unlock(&dev_priv->reservation_sem);
 return ret;
}
