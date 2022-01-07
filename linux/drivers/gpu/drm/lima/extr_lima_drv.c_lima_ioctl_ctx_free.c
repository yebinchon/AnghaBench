
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_drm_priv {int ctx_mgr; } ;
struct drm_lima_ctx_create {int id; scalar_t__ _pad; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int lima_ctx_free (int *,int ) ;

__attribute__((used)) static int lima_ioctl_ctx_free(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_ctx_create *args = data;
 struct lima_drm_priv *priv = file->driver_priv;

 if (args->_pad)
  return -EINVAL;

 return lima_ctx_free(&priv->ctx_mgr, args->id);
}
