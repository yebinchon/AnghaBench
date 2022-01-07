
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN11_HOTPLUG_CTL_ENABLE (int ) ;
 int GEN11_TBT_HOTPLUG_CTL ;
 int GEN11_TC_HOTPLUG_CTL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PORT_TC1 ;
 int PORT_TC2 ;
 int PORT_TC3 ;
 int PORT_TC4 ;

__attribute__((used)) static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug;

 hotplug = I915_READ(GEN11_TC_HOTPLUG_CTL);
 hotplug |= GEN11_HOTPLUG_CTL_ENABLE(PORT_TC1) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4);
 I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);

 hotplug = I915_READ(GEN11_TBT_HOTPLUG_CTL);
 hotplug |= GEN11_HOTPLUG_CTL_ENABLE(PORT_TC1) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
     GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4);
 I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
}
