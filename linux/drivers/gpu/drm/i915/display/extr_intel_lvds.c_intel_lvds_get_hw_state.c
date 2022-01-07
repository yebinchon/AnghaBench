
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_lvds_encoder {int reg; } ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int power_domain; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_lvds_port_enabled (struct drm_i915_private*,int ,int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_lvds_encoder* to_lvds_encoder (TYPE_1__*) ;

__attribute__((used)) static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
        enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
 intel_wakeref_t wakeref;
 bool ret;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           encoder->power_domain);
 if (!wakeref)
  return 0;

 ret = intel_lvds_port_enabled(dev_priv, lvds_encoder->reg, pipe);

 intel_display_power_put(dev_priv, encoder->power_domain, wakeref);

 return ret;
}
