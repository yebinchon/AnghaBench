
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int EDP_FORCE_VDD ;
 int I915_READ (int ) ;
 int PP_CONTROL (int) ;

__attribute__((used)) static bool vlv_pipe_has_vdd_on(struct drm_i915_private *dev_priv,
    enum pipe pipe)
{
 return I915_READ(PP_CONTROL(pipe)) & EDP_FORCE_VDD;
}
