
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {int dummy; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int mutex; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_object_file {int dummy; } ;
struct drm_vmw_control_stream_arg {int handle; int stream_id; int enabled; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 int ENOSYS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;
 int vmw_overlay_available (struct vmw_private*) ;
 int vmw_overlay_stop (struct vmw_private*,int ,int,int) ;
 int vmw_overlay_update_stream (struct vmw_private*,struct vmw_buffer_object*,struct drm_vmw_control_stream_arg*,int) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_resource_unreference (struct vmw_resource**) ;
 int vmw_user_bo_lookup (struct ttm_object_file*,int ,struct vmw_buffer_object**,int *) ;
 int vmw_user_stream_lookup (struct vmw_private*,struct ttm_object_file*,int *,struct vmw_resource**) ;

int vmw_overlay_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 struct drm_vmw_control_stream_arg *arg =
     (struct drm_vmw_control_stream_arg *)data;
 struct vmw_buffer_object *buf;
 struct vmw_resource *res;
 int ret;

 if (!vmw_overlay_available(dev_priv))
  return -ENOSYS;

 ret = vmw_user_stream_lookup(dev_priv, tfile, &arg->stream_id, &res);
 if (ret)
  return ret;

 mutex_lock(&overlay->mutex);

 if (!arg->enabled) {
  ret = vmw_overlay_stop(dev_priv, arg->stream_id, 0, 1);
  goto out_unlock;
 }

 ret = vmw_user_bo_lookup(tfile, arg->handle, &buf, ((void*)0));
 if (ret)
  goto out_unlock;

 ret = vmw_overlay_update_stream(dev_priv, buf, arg, 1);

 vmw_bo_unreference(&buf);

out_unlock:
 mutex_unlock(&overlay->mutex);
 vmw_resource_unreference(&res);

 return ret;
}
