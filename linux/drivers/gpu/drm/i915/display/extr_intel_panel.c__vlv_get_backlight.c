
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int I915_READ (int ) ;
 int PIPE_A ;
 int PIPE_B ;
 int VLV_BLC_PWM_CTL (int) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static u32 _vlv_get_backlight(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 if (WARN_ON(pipe != PIPE_A && pipe != PIPE_B))
  return 0;

 return I915_READ(VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
}
