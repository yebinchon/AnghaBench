
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int GEN7_MSG_CTL ;
 int HSW_NDE_RSTWRN_OPT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int RESET_PCH_HANDSHAKE_ENABLE ;
 int WAIT_FOR_PCH_FLR_ACK ;
 int WAIT_FOR_PCH_RESET_ACK ;

__attribute__((used)) static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
          bool enable)
{
 i915_reg_t reg;
 u32 reset_bits, val;

 if (IS_IVYBRIDGE(dev_priv)) {
  reg = GEN7_MSG_CTL;
  reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;
 } else {
  reg = HSW_NDE_RSTWRN_OPT;
  reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
 }

 val = I915_READ(reg);

 if (enable)
  val |= reset_bits;
 else
  val &= ~reset_bits;

 I915_WRITE(reg, val);
}
