
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int PIPE_A ;
 int PIPE_B ;
 int i830_disable_pipe (struct drm_i915_private*,int ) ;

__attribute__((used)) static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
       struct i915_power_well *power_well)
{
 i830_disable_pipe(dev_priv, PIPE_B);
 i830_disable_pipe(dev_priv, PIPE_A);
}
