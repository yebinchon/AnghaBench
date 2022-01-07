
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {scalar_t__ gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef int DEFINE_MUTEX ;


 scalar_t__ adreno_load_gpu (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void load_gpu(struct drm_device *dev)
{
 static DEFINE_MUTEX(init_lock);
 struct msm_drm_private *priv = dev->dev_private;

 mutex_lock(&init_lock);

 if (!priv->gpu)
  priv->gpu = adreno_load_gpu(dev);

 mutex_unlock(&init_lock);
}
