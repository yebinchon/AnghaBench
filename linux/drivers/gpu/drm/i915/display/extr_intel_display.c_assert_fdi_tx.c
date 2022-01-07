
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int FDI_TX_CTL (int) ;
 int FDI_TX_ENABLE ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ,int ) ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_FUNC_ENABLE ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int onoff (int) ;

__attribute__((used)) static void assert_fdi_tx(struct drm_i915_private *dev_priv,
     enum pipe pipe, bool state)
{
 bool cur_state;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);

 if (HAS_DDI(dev_priv)) {

  u32 val = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
  cur_state = !!(val & TRANS_DDI_FUNC_ENABLE);
 } else {
  u32 val = I915_READ(FDI_TX_CTL(pipe));
  cur_state = !!(val & FDI_TX_ENABLE);
 }
 I915_STATE_WARN(cur_state != state,
      "FDI TX state assertion failure (expected %s, current %s)\n",
   onoff(state), onoff(cur_state));
}
