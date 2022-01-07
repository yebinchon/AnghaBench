
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct intel_sdvo {int sdvo_reg; } ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int intel_sdvo_get_active_outputs (struct intel_sdvo*,scalar_t__*) ;
 int intel_sdvo_port_enabled (struct drm_i915_private*,int ,int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_sdvo* to_sdvo (struct intel_encoder*) ;

__attribute__((used)) static bool intel_sdvo_get_hw_state(struct intel_encoder *encoder,
        enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 u16 active_outputs = 0;
 bool ret;

 intel_sdvo_get_active_outputs(intel_sdvo, &active_outputs);

 ret = intel_sdvo_port_enabled(dev_priv, intel_sdvo->sdvo_reg, pipe);

 return ret || active_outputs;
}
