
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DP_AUX_CHANNEL_MASK_INT_STATUS_G4X ;
 int HOTPLUG_INT_STATUS_G4X ;
 int HOTPLUG_INT_STATUS_I915 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_HOTPLUG_STAT ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
{
 u32 hotplug_status = 0, hotplug_status_mask;
 int i;

 if (IS_G4X(dev_priv) ||
     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
   DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
 else
  hotplug_status_mask = HOTPLUG_INT_STATUS_I915;
 for (i = 0; i < 10; i++) {
  u32 tmp = I915_READ(PORT_HOTPLUG_STAT) & hotplug_status_mask;

  if (tmp == 0)
   return hotplug_status;

  hotplug_status |= tmp;
  I915_WRITE(PORT_HOTPLUG_STAT, hotplug_status);
 }

 WARN_ONCE(1,
    "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
    I915_READ(PORT_HOTPLUG_STAT));

 return hotplug_status;
}
