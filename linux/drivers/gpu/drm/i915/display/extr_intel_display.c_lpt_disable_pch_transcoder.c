
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int LPT_TRANSCONF ;
 int PIPE_A ;
 int TRANS_CHICKEN2 (int ) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_STATE_ENABLE ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;

void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(LPT_TRANSCONF);
 val &= ~TRANS_ENABLE;
 I915_WRITE(LPT_TRANSCONF, val);

 if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
        TRANS_STATE_ENABLE, 50))
  DRM_ERROR("Failed to disable PCH transcoder\n");


 val = I915_READ(TRANS_CHICKEN2(PIPE_A));
 val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
 I915_WRITE(TRANS_CHICKEN2(PIPE_A), val);
}
