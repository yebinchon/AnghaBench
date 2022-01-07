
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int BXT_DE_PORT_HOTPLUG_MASK ;
 int __bxt_hpd_detection_setup (struct drm_i915_private*,int ) ;

__attribute__((used)) static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
{
 __bxt_hpd_detection_setup(dev_priv, BXT_DE_PORT_HOTPLUG_MASK);
}
