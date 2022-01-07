
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int gma_intel_teardown_gmbus (struct drm_device*) ;
 int psb_lid_timer_takedown (struct drm_psb_private*) ;

__attribute__((used)) static void psb_chip_teardown(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 psb_lid_timer_takedown(dev_priv);
 gma_intel_teardown_gmbus(dev);
}
