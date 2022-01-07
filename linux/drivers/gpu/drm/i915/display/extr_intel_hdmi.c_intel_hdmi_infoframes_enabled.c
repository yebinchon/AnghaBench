
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int (* infoframes_enabled ) (struct intel_encoder*,struct intel_crtc_state const*) ;} ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int BIT (int) ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 int g4x_infoframe_enable (unsigned int) ;
 int hsw_infoframe_enable (unsigned int) ;
 unsigned int* infoframe_type_to_idx ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;

u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 u32 val, ret = 0;
 int i;

 val = dig_port->infoframes_enabled(encoder, crtc_state);


 for (i = 0; i < ARRAY_SIZE(infoframe_type_to_idx); i++) {
  unsigned int type = infoframe_type_to_idx[i];

  if (HAS_DDI(dev_priv)) {
   if (val & hsw_infoframe_enable(type))
    ret |= BIT(i);
  } else {
   if (val & g4x_infoframe_enable(type))
    ret |= BIT(i);
  }
 }

 return ret;
}
