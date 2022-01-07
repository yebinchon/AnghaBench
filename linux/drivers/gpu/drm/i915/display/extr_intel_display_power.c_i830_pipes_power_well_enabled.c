
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

__attribute__((used)) static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
       struct i915_power_well *power_well)
{
 return I915_READ(PIPECONF(PIPE_A)) & PIPECONF_ENABLE &&
  I915_READ(PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
}
