
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_printer {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int platform; } ;


 int CONFIG_DRM_I915_DEBUG ;
 int CONFIG_DRM_I915_DEBUG_GEM ;
 int CONFIG_DRM_I915_DEBUG_RUNTIME_PM ;
 int DRM_INFO (char*) ;
 int DRM_UT_DRIVER ;
 int INTEL_DEVID (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_1__* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_REVID (struct drm_i915_private*) ;
 scalar_t__ IS_ENABLED (int ) ;
 int RUNTIME_INFO (struct drm_i915_private*) ;
 int drm_debug ;
 struct drm_printer drm_debug_printer (char*) ;
 int drm_printf (struct drm_printer*,char*,int ,int ,int ,int ,int ) ;
 int intel_device_info_dump_flags (TYPE_1__*,struct drm_printer*) ;
 int intel_device_info_dump_runtime (int ,struct drm_printer*) ;
 int intel_platform_name (int ) ;
 int intel_subplatform (int ,int ) ;

__attribute__((used)) static void i915_welcome_messages(struct drm_i915_private *dev_priv)
{
 if (drm_debug & DRM_UT_DRIVER) {
  struct drm_printer p = drm_debug_printer("i915 device info:");

  drm_printf(&p, "pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\n",
      INTEL_DEVID(dev_priv),
      INTEL_REVID(dev_priv),
      intel_platform_name(INTEL_INFO(dev_priv)->platform),
      intel_subplatform(RUNTIME_INFO(dev_priv),
          INTEL_INFO(dev_priv)->platform),
      INTEL_GEN(dev_priv));

  intel_device_info_dump_flags(INTEL_INFO(dev_priv), &p);
  intel_device_info_dump_runtime(RUNTIME_INFO(dev_priv), &p);
 }

 if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
  DRM_INFO("DRM_I915_DEBUG enabled\n");
 if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
  DRM_INFO("DRM_I915_DEBUG_GEM enabled\n");
 if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
  DRM_INFO("DRM_I915_DEBUG_RUNTIME_PM enabled\n");
}
