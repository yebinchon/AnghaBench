
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_TRANSCONF (int) ;
 int TRANS_CHICKEN2 (int) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_STATE_ENABLE ;
 int assert_fdi_rx_disabled (struct drm_i915_private*,int) ;
 int assert_fdi_tx_disabled (struct drm_i915_private*,int) ;
 int assert_pch_ports_disabled (struct drm_i915_private*,int) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 int pipe_name (int) ;

__attribute__((used)) static void ironlake_disable_pch_transcoder(struct drm_i915_private *dev_priv,
         enum pipe pipe)
{
 i915_reg_t reg;
 u32 val;


 assert_fdi_tx_disabled(dev_priv, pipe);
 assert_fdi_rx_disabled(dev_priv, pipe);


 assert_pch_ports_disabled(dev_priv, pipe);

 reg = PCH_TRANSCONF(pipe);
 val = I915_READ(reg);
 val &= ~TRANS_ENABLE;
 I915_WRITE(reg, val);

 if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
  DRM_ERROR("failed to disable transcoder %c\n", pipe_name(pipe));

 if (HAS_PCH_CPT(dev_priv)) {

  reg = TRANS_CHICKEN2(pipe);
  val = I915_READ(reg);
  val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
  I915_WRITE(reg, val);
 }
}
