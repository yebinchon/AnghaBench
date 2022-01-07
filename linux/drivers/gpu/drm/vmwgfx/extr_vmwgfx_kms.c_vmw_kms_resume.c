
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int * suspend_state; } ;
struct drm_device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_atomic_helper_resume (struct drm_device*,int *) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;

int vmw_kms_resume(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 int ret;

 if (WARN_ON(!dev_priv->suspend_state))
  return 0;

 ret = drm_atomic_helper_resume(dev, dev_priv->suspend_state);
 dev_priv->suspend_state = ((void*)0);

 return ret;
}
