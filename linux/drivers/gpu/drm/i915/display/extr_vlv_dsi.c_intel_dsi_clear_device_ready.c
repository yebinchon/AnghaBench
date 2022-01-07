
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int glk_dsi_clear_device_ready (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_dsi_clear_device_ready (struct intel_encoder*) ;

__attribute__((used)) static void intel_dsi_clear_device_ready(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 if (IS_GEMINILAKE(dev_priv))
  glk_dsi_clear_device_ready(encoder);
 else
  vlv_dsi_clear_device_ready(encoder);
}
