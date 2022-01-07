
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int * suspend_state; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * drm_atomic_helper_suspend (struct drm_device*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;

int vmw_kms_suspend(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);

 dev_priv->suspend_state = drm_atomic_helper_suspend(dev);
 if (IS_ERR(dev_priv->suspend_state)) {
  int ret = PTR_ERR(dev_priv->suspend_state);

  DRM_ERROR("Failed kms suspend: %d\n", ret);
  dev_priv->suspend_state = ((void*)0);

  return ret;
 }

 return 0;
}
