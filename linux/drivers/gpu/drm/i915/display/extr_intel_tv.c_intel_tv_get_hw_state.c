
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int TV_CTL ;
 int TV_ENC_ENABLE ;
 int TV_ENC_PIPE_SEL_MASK ;
 int TV_ENC_PIPE_SEL_SHIFT ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
intel_tv_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 tmp = I915_READ(TV_CTL);

 *pipe = (tmp & TV_ENC_PIPE_SEL_MASK) >> TV_ENC_PIPE_SEL_SHIFT;

 return tmp & TV_ENC_ENABLE;
}
