
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef scalar_t__ intel_wakeref_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ,int ,int ) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int POWER_DOMAIN_TRANSCODER (int) ;
 scalar_t__ intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,scalar_t__) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int onoff (int) ;
 int pipe_name (int) ;

void assert_pipe(struct drm_i915_private *dev_priv,
   enum pipe pipe, bool state)
{
 bool cur_state;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);
 enum intel_display_power_domain power_domain;
 intel_wakeref_t wakeref;


 if (IS_I830(dev_priv))
  state = 1;

 power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (wakeref) {
  u32 val = I915_READ(PIPECONF(cpu_transcoder));
  cur_state = !!(val & PIPECONF_ENABLE);

  intel_display_power_put(dev_priv, power_domain, wakeref);
 } else {
  cur_state = 0;
 }

 I915_STATE_WARN(cur_state != state,
      "pipe %c assertion failure (expected %s, current %s)\n",
   pipe_name(pipe), onoff(state), onoff(cur_state));
}
