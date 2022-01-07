
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LPT_TRANSCONF ;
 int PIPECONF (int) ;
 int PIPECONF_INTERLACED_ILK ;
 int PIPECONF_INTERLACE_MASK_HSW ;
 int PIPE_A ;
 int TRANS_CHICKEN2 (int ) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_INTERLACED ;
 int TRANS_PROGRESSIVE ;
 int TRANS_STATE_ENABLE ;
 int assert_fdi_rx_enabled (struct drm_i915_private*,int ) ;
 int assert_fdi_tx_enabled (struct drm_i915_private*,int) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
          enum transcoder cpu_transcoder)
{
 u32 val, pipeconf_val;


 assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);
 assert_fdi_rx_enabled(dev_priv, PIPE_A);


 val = I915_READ(TRANS_CHICKEN2(PIPE_A));
 val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 I915_WRITE(TRANS_CHICKEN2(PIPE_A), val);

 val = TRANS_ENABLE;
 pipeconf_val = I915_READ(PIPECONF(cpu_transcoder));

 if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
     PIPECONF_INTERLACED_ILK)
  val |= TRANS_INTERLACED;
 else
  val |= TRANS_PROGRESSIVE;

 I915_WRITE(LPT_TRANSCONF, val);
 if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
      TRANS_STATE_ENABLE, 100))
  DRM_ERROR("Failed to enable PCH transcoder\n");
}
