
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hpd_pin; } ;
struct intel_crt {TYPE_1__ base; int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int ADPA_CRT_HOTPLUG_FORCE_TRIGGER ;
 int ADPA_CRT_HOTPLUG_MONITOR_MASK ;
 int DRM_DEBUG_KMS (char*,...) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int,int) ;
 int intel_hpd_disable (struct drm_i915_private*,int ) ;
 int intel_hpd_enable (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct intel_crt *crt = intel_attached_crt(connector);
 struct drm_i915_private *dev_priv = to_i915(dev);
 bool reenable_hpd;
 u32 adpa;
 bool ret;
 u32 save_adpa;
 reenable_hpd = intel_hpd_disable(dev_priv, crt->base.hpd_pin);

 save_adpa = adpa = I915_READ(crt->adpa_reg);
 DRM_DEBUG_KMS("trigger hotplug detect cycle: adpa=0x%x\n", adpa);

 adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;

 I915_WRITE(crt->adpa_reg, adpa);

 if (intel_de_wait_for_clear(dev_priv, crt->adpa_reg,
        ADPA_CRT_HOTPLUG_FORCE_TRIGGER, 1000)) {
  DRM_DEBUG_KMS("timed out waiting for FORCE_TRIGGER");
  I915_WRITE(crt->adpa_reg, save_adpa);
 }


 adpa = I915_READ(crt->adpa_reg);
 if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
  ret = 1;
 else
  ret = 0;

 DRM_DEBUG_KMS("valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);

 if (reenable_hpd)
  intel_hpd_enable(dev_priv, crt->base.hpd_pin);

 return ret;
}
