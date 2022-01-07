
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {int dummy; } ;
struct drm_i915_private {int fbdev; } ;


 struct intel_fbdev* fetch_and_zero (int *) ;
 int intel_fbdev_destroy (struct intel_fbdev*) ;

void intel_fbdev_fini(struct drm_i915_private *dev_priv)
{
 struct intel_fbdev *ifbdev = fetch_and_zero(&dev_priv->fbdev);

 if (!ifbdev)
  return;

 intel_fbdev_destroy(ifbdev);
}
