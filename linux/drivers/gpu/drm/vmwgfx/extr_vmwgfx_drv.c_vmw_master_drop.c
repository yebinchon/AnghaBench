
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int enable_fb; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int vmw_kms_legacy_hotspot_clear (struct vmw_private*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_svga_disable (struct vmw_private*) ;

__attribute__((used)) static void vmw_master_drop(struct drm_device *dev,
       struct drm_file *file_priv)
{
 struct vmw_private *dev_priv = vmw_priv(dev);

 vmw_kms_legacy_hotspot_clear(dev_priv);
 if (!dev_priv->enable_fb)
  vmw_svga_disable(dev_priv);
}
