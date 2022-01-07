
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int CRT_HOTPLUG_FORCE_DETECT ;
 int CRT_HOTPLUG_INT_STATUS ;
 int CRT_HOTPLUG_MONITOR_MASK ;
 int CRT_HOTPLUG_MONITOR_NONE ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_G45 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_HOTPLUG_EN ;
 int PORT_HOTPLUG_STAT ;
 int i915_hotplug_interrupt_update (struct drm_i915_private*,int ,int ) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 int intel_ironlake_crt_detect_hotplug (struct drm_connector*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int valleyview_crt_detect_hotplug (struct drm_connector*) ;

__attribute__((used)) static bool intel_crt_detect_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 stat;
 bool ret = 0;
 int i, tries = 0;

 if (HAS_PCH_SPLIT(dev_priv))
  return intel_ironlake_crt_detect_hotplug(connector);

 if (IS_VALLEYVIEW(dev_priv))
  return valleyview_crt_detect_hotplug(connector);






 if (IS_G45(dev_priv))
  tries = 2;
 else
  tries = 1;

 for (i = 0; i < tries ; i++) {

  i915_hotplug_interrupt_update(dev_priv,
           CRT_HOTPLUG_FORCE_DETECT,
           CRT_HOTPLUG_FORCE_DETECT);

  if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN,
         CRT_HOTPLUG_FORCE_DETECT, 1000))
   DRM_DEBUG_KMS("timed out waiting for FORCE_DETECT to go off");
 }

 stat = I915_READ(PORT_HOTPLUG_STAT);
 if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
  ret = 1;


 I915_WRITE(PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);

 i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);

 return ret;
}
