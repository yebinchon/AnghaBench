
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct drm_file {struct msm_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; struct msm_drm_private* dev_private; } ;


 int context_close (struct msm_file_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void msm_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_file_private *ctx = file->driver_priv;

 mutex_lock(&dev->struct_mutex);
 if (ctx == priv->lastctx)
  priv->lastctx = ((void*)0);
 mutex_unlock(&dev->struct_mutex);

 context_close(ctx);
}
