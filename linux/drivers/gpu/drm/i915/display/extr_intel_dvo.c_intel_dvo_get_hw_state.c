
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int dvo_reg; } ;
struct intel_dvo {TYPE_2__ dev; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DVO_ENABLE ;
 int DVO_PIPE_SEL_MASK ;
 int DVO_PIPE_SEL_SHIFT ;
 int I915_READ (int ) ;
 struct intel_dvo* enc_to_dvo (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 u32 tmp;

 tmp = I915_READ(intel_dvo->dev.dvo_reg);

 *pipe = (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;

 return tmp & DVO_ENABLE;
}
