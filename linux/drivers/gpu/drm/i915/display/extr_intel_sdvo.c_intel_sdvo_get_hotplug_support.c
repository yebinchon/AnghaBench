
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int hotplug ;


 int I915_HAS_HOTPLUG (struct drm_i915_private*) ;
 scalar_t__ IS_I945G (struct drm_i915_private*) ;
 scalar_t__ IS_I945GM (struct drm_i915_private*) ;
 int SDVO_CMD_GET_HOT_PLUG_SUPPORT ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,int *,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u16 intel_sdvo_get_hotplug_support(struct intel_sdvo *intel_sdvo)
{
 struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
 u16 hotplug;

 if (!I915_HAS_HOTPLUG(dev_priv))
  return 0;





 if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
  return 0;

 if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_HOT_PLUG_SUPPORT,
     &hotplug, sizeof(hotplug)))
  return 0;

 return hotplug;
}
