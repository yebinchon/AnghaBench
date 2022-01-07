
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int PIPECONF (int ) ;
 int PIPECONF_ENABLE ;
 int PIPE_A ;
 int PIPE_B ;
 int i830_enable_pipe (struct drm_i915_private*,int ) ;

__attribute__((used)) static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
      struct i915_power_well *power_well)
{
 if ((I915_READ(PIPECONF(PIPE_A)) & PIPECONF_ENABLE) == 0)
  i830_enable_pipe(dev_priv, PIPE_A);
 if ((I915_READ(PIPECONF(PIPE_B)) & PIPECONF_ENABLE) == 0)
  i830_enable_pipe(dev_priv, PIPE_B);
}
