
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SHOTPLUG_CTL_DDI ;
 int SHOTPLUG_CTL_TC ;

__attribute__((used)) static void icp_hpd_detection_setup(struct drm_i915_private *dev_priv,
        u32 ddi_hotplug_enable_mask,
        u32 tc_hotplug_enable_mask)
{
 u32 hotplug;

 hotplug = I915_READ(SHOTPLUG_CTL_DDI);
 hotplug |= ddi_hotplug_enable_mask;
 I915_WRITE(SHOTPLUG_CTL_DDI, hotplug);

 if (tc_hotplug_enable_mask) {
  hotplug = I915_READ(SHOTPLUG_CTL_TC);
  hotplug |= tc_hotplug_enable_mask;
  I915_WRITE(SHOTPLUG_CTL_TC, hotplug);
 }
}
