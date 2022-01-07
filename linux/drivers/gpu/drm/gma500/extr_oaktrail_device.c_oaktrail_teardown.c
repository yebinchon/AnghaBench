
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int has_gct; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int gma_intel_teardown_gmbus (struct drm_device*) ;
 int oaktrail_hdmi_teardown (struct drm_device*) ;
 int psb_intel_destroy_bios (struct drm_device*) ;

__attribute__((used)) static void oaktrail_teardown(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;

 gma_intel_teardown_gmbus(dev);
 oaktrail_hdmi_teardown(dev);
 if (!dev_priv->has_gct)
  psb_intel_destroy_bios(dev);
}
